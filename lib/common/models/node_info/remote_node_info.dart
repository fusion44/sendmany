import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../channels/channel_edge.dart';
import 'lightning_node.dart';

class RemoteNodeInfo {
  LightningNode node;
  int numChannels;
  Int64 totalCapacity;
  List<ChannelEdge> channels;

  RemoteNodeInfo({
    this.node,
    this.numChannels,
    this.totalCapacity,
    this.channels,
  });

  static RemoteNodeInfo fromGRPC(grpc.NodeInfo i) {
    var channels = <ChannelEdge>[];
    if (i.channels != null && i.channels.isNotEmpty) {
      i.channels.forEach((c) {
        channels.add(ChannelEdge.fromGrpc(c));
      });
    }
    return RemoteNodeInfo(
      node: i.node != null ? LightningNode.fromGRPC(i.node) : null,
      numChannels: i.numChannels,
      totalCapacity: i.totalCapacity,
      channels: channels,
    );
  }
}
