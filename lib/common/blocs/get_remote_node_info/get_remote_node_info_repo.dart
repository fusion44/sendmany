import 'dart:async';

import '../../connection/connection_manager/bloc.dart';
import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../models/models.dart';

class GetRemoteNodeInfoResults {
  final Map<String, RemoteNodeInfo> infos;
  final Map<String, String> errors;

  GetRemoteNodeInfoResults(this.infos, this.errors);
}

class _FetchNodeInfoResult {
  final String pubKey;
  final grpc.NodeInfo ni;
  final bool hasError;
  final String errorMessage;

  _FetchNodeInfoResult(
    this.pubKey,
    this.ni, [
    this.hasError = false,
    this.errorMessage = '',
  ]);
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

    var futures = <Future<_FetchNodeInfoResult>>[];
    notLoaded.forEach((request) {
      futures.add(_getNodeInfo(request));
    });

    var errors = <String, String>{};
    var results = await Future.wait(
      futures,
      cleanUp: (
        _FetchNodeInfoResult ni,
      ) {
        if (ni.hasError) {
          errors[ni.pubKey] = '[cleanup] ${ni.errorMessage}';
        } else {
          _infos[ni.pubKey] = RemoteNodeInfo.fromGRPC(ni.ni);
          l[ni.pubKey] = _infos[ni.pubKey];
        }
      },
    );

    if (results != null && results.isNotEmpty) {
      results.forEach((res) {
        if (res.hasError) {
          errors[res.pubKey] = res.errorMessage;
        } else {
          _infos[res.pubKey] = RemoteNodeInfo.fromGRPC(res.ni);
          l[res.pubKey] = _infos[res.pubKey];
        }
      });
    }

    return GetRemoteNodeInfoResults(l, errors);
  }

  void dispose() {
    _infos.clear();
  }

  FutureOr<_FetchNodeInfoResult> _getNodeInfo(grpc.NodeInfoRequest req) async {
    var client = LnConnectionDataProvider().lightningClient;
    try {
      var node = await client.getNodeInfo(req);
      return _FetchNodeInfoResult(req.pubKey, node);
    } catch (e) {
      return _FetchNodeInfoResult(req.pubKey, null, true, e.toString());
    }
  }
}
