import 'dart:async';

import 'package:grpc/grpc.dart';

import '../../connection/connection_manager/bloc.dart';
import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../models/models.dart';

class GetRemoteNodeInfoResults {
  final Map<String, RemoteNodeInfo> infos;
  final Map<String, String> errors;

  GetRemoteNodeInfoResults(this.infos, this.errors);
}

class GetRemoteNodeInfoRepository {
  final Map<String, RemoteNodeInfo> _infos = {};

  FutureOr<RemoteNodeInfo> getNodeInfo(
    String pubKey, [
    bool includeChannels = false,
  ]) async {
    if (_infos.containsKey(pubKey)) return _infos[pubKey];

    var client = LnConnectionDataProvider().lightningClient;

    var req = grpc.NodeInfoRequest();
    req.pubKey = pubKey;
    req.includeChannels = includeChannels;

    var resp = await client.getNodeInfo(req);
    var rni = RemoteNodeInfo.fromGRPC(resp);
    _infos[pubKey] = rni;
    return rni;
  }

  FutureOr<GetRemoteNodeInfoResults> getNodeInfos(
    List<String> pubKeys, [
    bool includeChannels = false,
  ]) async {
    var l = <String, RemoteNodeInfo>{};
    var notLoaded = <grpc.NodeInfoRequest>[];

    pubKeys.forEach((k) {
      if (_infos.containsKey(l)) {
        l[k] = _infos[l];
      } else {
        var req = grpc.NodeInfoRequest();
        req.pubKey = k;
        req.includeChannels = includeChannels;
        notLoaded.add(req);
      }
    });

    var client = LnConnectionDataProvider().lightningClient;
    var futures = <ResponseFuture<grpc.NodeInfo>>[];
    notLoaded.forEach((request) {
      futures.add(client.getNodeInfo(request));
    });

    var results = await Future.wait(
      futures,
      cleanUp: (
        grpc.NodeInfo grpcNodeInfo,
      ) {
        var key = grpcNodeInfo.node.pubKey;
        _infos[key] = RemoteNodeInfo.fromGRPC(grpcNodeInfo);
        l[key] = _infos[key];
      },
    );

    if (results != null && results.isNotEmpty) {
      results.forEach((grpcNodeInfo) {
        var key = grpcNodeInfo.node.pubKey;
        _infos[key] = RemoteNodeInfo.fromGRPC(grpcNodeInfo);
        l[key] = _infos[key];
      });
    }
    return GetRemoteNodeInfoResults(l, {});
  }

  void dispose() {
    _infos.clear();
  }
}
