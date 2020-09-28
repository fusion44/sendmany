import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import 'package:sendmany/common/models/models.dart';

import './bloc.dart';

class ListPeersBloc extends Bloc<ListPeersEvent, ListPeersState> {
  ListPeersBloc() : super(InitialListPeersState());

  @override
  Stream<ListPeersState> mapEventToState(
    ListPeersEvent event,
  ) async* {
    if (event is LoadPeersList) {
      yield PeersLoadingState();

      var client = LnConnectionDataProvider().lightningClient;

      var listPeersReq = grpc.ListPeersRequest();

      try {
        var resp = await client.listPeers(listPeersReq);
        var nodeInfoRequests = <Future<LoadedPeer>>[];
        resp.peers.forEach((grpc.Peer p) {
          nodeInfoRequests.add(_getNodeInfo(Peer.fromGRPC(p)));
        });

        var responseList = await Future.wait(
          nodeInfoRequests,
        ).catchError((error) {
          print(error);
        });

        var peerMap = <String, LoadedPeer>{};
        responseList.toList()?.forEach((LoadedPeer p) {
          peerMap[p.peer.pubKey] = p;
        });

        yield PeersLoadedState(peerMap);
      } catch (e) {
        if (e is GrpcError) {
          print(e.message);
          yield PeersLoadingErrorState(e.message);
        } else {
          print(e);
          yield PeersLoadingErrorState(e.toString());
        }
      }
    }
  }

  Future<LoadedPeer> _getNodeInfo(Peer peer) async {
    // unfortunately LND doesn't supply the alias, color etc with the peer
    // so we have to make an extra roundtrip and load the NodeInfo object
    var client = LnConnectionDataProvider().lightningClient;
    var nodeInfoReq = grpc.NodeInfoRequest();
    nodeInfoReq.pubKey = peer.pubKey;
    nodeInfoReq.includeChannels = false;
    try {
      var info = await client.getNodeInfo(nodeInfoReq);
      return LoadedPeer(peer, nodeInfo: RemoteNodeInfo.fromGRPC(info));
    } on GrpcError catch (e) {
      // We must catch errors here. For example mainnet nodes can connect to testnet
      // nodes and vice versa. Of course, a NodeInfoRequest() will not be able find
      // any info for that particular pubkey if it's on another network. Possible
      // workaround would be to query a service like www.1ml.com
      return LoadedPeer(peer, error: PeerLoadError(e.toString(), peer.pubKey));
    }
  }
}
