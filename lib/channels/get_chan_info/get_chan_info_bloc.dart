import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';

import './bloc.dart';
import '../../common/connection/connection_manager/bloc.dart';
import '../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../common/models/channels/models.dart';

class GetChanInfoBloc extends Bloc<GetChanInfoEvent, GetChanInfoState> {
  GetChanInfoBloc() : super(InitialGetChanInfoState());

  @override
  Stream<GetChanInfoState> mapEventToState(
    GetChanInfoEvent event,
  ) async* {
    yield ChanInfoLoadingState(event.chanId);

    var client = LnConnectionDataProvider().lightningClient;

    var getChanInfoReq = grpc.ChanInfoRequest();
    getChanInfoReq.chanId = event.chanId;
    try {
      var res = await client.getChanInfo(getChanInfoReq);
      yield ChanInfoLoadedState(ChannelEdge.fromGrpc(res));
    } on GrpcError catch (e) {
      yield ChanInfoLoadingErrorState(e.message, chanId: event.chanId);
    }
  }
}
