import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'channel_edge.dart';
import 'lightning_node.dart';

class NodeInfo {
  LightningNode node;
  int numChannels;
  Int64 totalCapacity;
  List<ChannelEdge> channels;

  NodeInfo({this.node, this.numChannels, this.totalCapacity, this.channels});

  static NodeInfo fromGRPC(grpc.NodeInfo i) {
    List<ChannelEdge> channels = [];
    if (i.channels != null && i.channels.isNotEmpty) {
      i.channels.forEach((c) {
        channels.add(ChannelEdge.fromGRPC(c));
      });
    }
    return NodeInfo(
      node: i.node != null ? LightningNode.fromGRPC(i.node) : null,
      numChannels: i.numChannels,
      totalCapacity: i.totalCapacity,
      channels: channels,
    );
  }
}
