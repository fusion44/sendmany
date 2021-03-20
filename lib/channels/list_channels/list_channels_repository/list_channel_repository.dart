import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

import '../../../common/connection/connection_manager/bloc.dart';
import '../../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../../common/models/models.dart';

class ListChannelsRepository {
  bool _loaded = false;
  final List _channels = <Channel>[];
  final Map _channelsMap = <Int64, Channel>{};

  // Get a list of all pending, open and closed channels
  Future<List<Channel>> getChannelsList({bool forceReload = false}) async {
    if (_loaded && !forceReload) return List.from(_channels);
    await _updateChannelList();
    return List.from(_channels);
  }

  // Get a Map<chandId, Channel> of all open and closed channels.
  Future<Map<Int64, Channel>> getChannelsMap({bool forceReload = false}) async {
    if (_loaded && !forceReload) return Map.from(_channelsMap);
    await _updateChannelList();
    return Map.from(_channelsMap);
  }

  Future<void> _updateChannelList() async {
    _channels.clear();
    _channelsMap.clear();

    var responseList = await Future.wait([
      _loadPendingChannels(),
      _loadOpenChannels(),
      _loadClosedChannels(),
    ]).catchError((error) {
      print(error);
    });

    final pendingChannels = responseList[0];
    final establishedChannels = responseList[1];
    final closedChannels = responseList[2];

    if (pendingChannels.isNotEmpty) {
      _channels.addAll(pendingChannels);
      // Pending channels can't be included in the map because
      // it doesn't have yet a chanId as it depends on the block height
    }

    if (establishedChannels.isNotEmpty) {
      _channels.addAll(establishedChannels);
      establishedChannels.forEach((channel) {
        if (channel is EstablishedChannel) {
          _channelsMap[channel.chanId] = channel;
        }
      });
    }

    if (closedChannels.isNotEmpty) {
      _channels.addAll(closedChannels);
      closedChannels.forEach((channel) {
        if (channel is ClosedChannelSummary) {
          _channelsMap[channel.chanId] = channel;
        }
      });
    }

    _loaded = true;
  }

  Future<List<Channel>> _loadPendingChannels() async {
    var client = LnConnectionDataProvider().lightningClient;
    var req = grpc.PendingChannelsRequest();
    var resp = await client.pendingChannels(req);
    var p = PendingChannels.fromGRPC(resp);
    return [
      ...p.pendingClosingChannels,
      ...p.pendingForceClosingChannels,
      ...p.pendingOpenChannels,
      ...p.waitingCloseChannels,
    ];
  }

  Future<List<Channel>> _loadOpenChannels() async {
    var client = LnConnectionDataProvider().lightningClient;
    var req = grpc.ListChannelsRequest();
    var resp = await client.listChannels(req);

    var channels = <Channel>[];
    for (var c in resp.channels) {
      var req = grpc.NodeInfoRequest();
      req.pubKey = c.remotePubkey;
      req.includeChannels = false;

      try {
        var nodeInfoResp = await client.getNodeInfo(req);
        var ni = RemoteNodeInfo.fromGRPC(nodeInfoResp);
        channels.add(EstablishedChannel.fromGRPC(c, ni));
      } on GrpcError catch (e) {
        print(e.toString());
      }
    }

    return channels;
  }

  Future<List<Channel>> _loadClosedChannels() async {
    var client = LnConnectionDataProvider().lightningClient;
    var req = grpc.ClosedChannelsRequest();
    var resp = await client.closedChannels(req);

    var channels = <Channel>[];
    for (var c in resp.channels) {
      var req = grpc.NodeInfoRequest();
      req.pubKey = c.remotePubkey;
      req.includeChannels = false;

      try {
        var nodeInfoResp = await client.getNodeInfo(req);
        var ni = RemoteNodeInfo.fromGRPC(nodeInfoResp);
        channels.add(ClosedChannelSummary.fromGRPC(c, ni));
      } on GrpcError catch (e) {
        print(e.toString());
      }
    }

    return channels;
  }
}
