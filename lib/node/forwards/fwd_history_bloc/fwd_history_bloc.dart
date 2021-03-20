import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import '../../../channels/list_channels/list_channels_repository/list_channel_repository.dart';
import '../../../common/connection/connection_manager/bloc.dart';
import '../../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../../common/models/models.dart';
import '../models/forwarding_event.dart';

part 'fwd_history_bloc_event.dart';
part 'fwd_history_bloc_state.dart';

class ForwardingHistoryBloc
    extends Bloc<ForwardingHistoryBlocEvent, ForwardingHistoryBlocState> {
  final ListChannelsRepository _listChannelsRepository;

  ForwardingHistoryBloc(this._listChannelsRepository)
      : super(ForwardingHistoryBlocInitial());

  @override
  Stream<ForwardingHistoryBlocState> mapEventToState(
    ForwardingHistoryBlocEvent event,
  ) async* {
    if (event is LoadFwdHistory) {
      try {
        final client = LnConnectionDataProvider().lightningClient;
        final feeReportReq = grpc.ForwardingHistoryRequest(numMaxEvents: 30);
        final resp = await client.forwardingHistory(feeReportReq);
        final fwdEvents = resp.forwardingEvents
            .map((element) => ForwardingEvent.fromGrpc(element))
            .toList();
        final channels = await _listChannelsRepository.getChannelsMap();
        yield FwdHistoryLoaded(
          fwdEvents,
          resp.lastOffsetIndex,
          channels,
        );
      } on GrpcError catch (e) {
        yield FwdHistoryLoadErrorState(e.message);
      } on Error catch (e) {
        print(e.stackTrace);
        yield FwdHistoryLoadErrorState(e.stackTrace.toString());
      }
    }
  }
}
