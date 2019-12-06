import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import 'package:sendmany/common/models/models.dart';

import './bloc.dart';

class ListPeersBloc extends Bloc<ListPeersEvent, ListPeersState> {
  @override
  ListPeersState get initialState => InitialListPeersState();

  @override
  Stream<ListPeersState> mapEventToState(
    ListPeersEvent event,
  ) async* {
    if (event is LoadPeersList) {
      yield PeersLoadingState();

      var client = LnConnectionDataProvider().lightningClient;

      grpc.ListPeersRequest listPeersReq = grpc.ListPeersRequest();

      try {
        grpc.ListPeersResponse resp = await client.listPeers(listPeersReq);

        List<ResponseFuture<grpc.NodeInfo>> nodeInfoRequests = [];
        resp.peers.forEach((grpc.Peer p) {
          grpc.NodeInfoRequest nodeInfoReq = grpc.NodeInfoRequest();
          nodeInfoReq.pubKey = p.pubKey;
          nodeInfoReq.includeChannels = false;
          nodeInfoRequests.add(client.getNodeInfo(nodeInfoReq));
        });

        var responseList = await Future.wait(
          nodeInfoRequests,
        ).catchError((error) {
          print(error);
        });

        List<Peer> peers = [];

        for (var i = 0; i < resp.peers.length; i++) {
          peers.add(
            Peer.fromGRPC(
              resp.peers[i],
              NodeInfo.fromGRPC(responseList[i]),
            ),
          );
        }

        yield PeersLoadedState(peers);
      } on GrpcError catch (e) {
        print(e);
        yield PeersLoadingErrorState(e.message);
        return;
      }
    }
  }
}
