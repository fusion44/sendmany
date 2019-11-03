import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import 'package:sendmany/common/models/models.dart';
import './bloc.dart';

/// Fetches information about another node in the lightning network
///
/// Add [GetRemoteNodeInfoEvent] to start fetching
/// Yields either [RemoteNodeInfoLoadingState], [RemoteNodeInfoLoadedState] or
/// [RemoteNodeInfoErrorState]
class GetRemoteNodeInfoBloc
    extends Bloc<GetRemoteNodeInfoEvent, GetRemoteNodeInfoState> {
  @override
  GetRemoteNodeInfoState get initialState => InitialGetRemoteNodeInfoState();

  @override
  Stream<GetRemoteNodeInfoState> mapEventToState(
    GetRemoteNodeInfoEvent event,
  ) async* {
    var client = LnConnectionDataProvider().lightningClient;

    yield (RemoteNodeInfoLoadingState(event.pubKey));

    grpc.NodeInfoRequest req = grpc.NodeInfoRequest();
    req.pubKey = event.pubKey;
    req.includeChannels = event.includeChannels;

    try {
      grpc.NodeInfo resp = await client.getNodeInfo(req);
      yield RemoteNodeInfoLoadedState(NodeInfo.fromGRPC(resp));
    } on GrpcError catch (e) {
      yield RemoteNodeInfoErrorState(e.toString(), pubKey: event.pubKey);
    }
  }
}
