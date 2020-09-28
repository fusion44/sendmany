import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import './bloc.dart';
import '../../common/connection/connection_manager/bloc.dart';
import '../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../common/models/channels/channel_point.dart';
import '../subscribe_channel_events/bloc/bloc.dart';

class _PeerOfflineEvent extends CloseChannelBaseEvent {
  _PeerOfflineEvent(ChannelPoint channelPoint) : super(channelPoint);
}

class CloseChannelBloc
    extends Bloc<CloseChannelBaseEvent, CloseChannelBlocState> {
  ResponseStream<grpc.CloseStatusUpdate> _stream;
  final SubscribeChannelEventsBloc _subChannelEventsBloc;

  CloseChannelBloc(this._subChannelEventsBloc)
      : super(InitialCloseChannelBlocState());

  @override
  Future<void> close() async {
    await _stream?.cancel();
    return super.close();
  }

  @override
  Stream<CloseChannelBlocState> mapEventToState(
    CloseChannelBaseEvent event,
  ) async* {
    if (event is CloseChannelEvent) {
      yield CloseChannelLoadingState(event.channelPoint);

      var client = LnConnectionDataProvider().lightningClient;
      var closeChanReq = grpc.CloseChannelRequest();
      closeChanReq.channelPoint = event.channelPoint.toGRPC();

      closeChanReq.force = event.force;
      closeChanReq.deliveryAddress = event.deliveryAddress;
      if (!event.force) {
        closeChanReq.satPerByte = event.satPerByte ?? Int64.ZERO;
        closeChanReq.targetConf = event.blockTarget ?? Int64.ZERO;
      }

      try {
        _stream = client.closeChannel(closeChanReq);
        _stream.listen((data) {
          if (data.closePending != null) {
            var txid = hex.encode(
              data.closePending.txid.reversed.toList(growable: false),
            );
            _subChannelEventsBloc.add(
              ClosingChannelEvent(
                event.channelPoint,
                txid,
              ),
            );
          }
        }).onError((closeError) {
          if (closeError.message.contains('try force closing it instead')) {
            add(_PeerOfflineEvent(event.channelPoint));
          } else {
            print('OnChanCloseError: $closeError');
          }
        });

        yield CloseChannelStartedState(event.channelPoint);
      } on GrpcError catch (e) {
        yield CloseChannelErrorState(e.message);
      }
    } else if (event is _PeerOfflineEvent) {
      yield CloseChannelErrorState(
        'Peer offline',
        edge: event.channelPoint,
        reason: CloseErrorReason.peerOffline,
      );
    }
  }
}
