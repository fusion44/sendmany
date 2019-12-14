import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'routing_policy.dart';

class ChannelEdge {
  final Int64 channelId;
  final String chanPoint;
  final String node1Pub;
  final String node2Pub;
  final Int64 capacity;
  final RoutingPolicy node1Policy;
  final RoutingPolicy node2Policy;

  ChannelEdge({
    this.channelId,
    this.chanPoint,
    this.node1Pub,
    this.node2Pub,
    this.capacity,
    this.node1Policy,
    this.node2Policy,
  });

  static ChannelEdge fromGRPC(grpc.ChannelEdge e) {
    return ChannelEdge(
      channelId: e.channelId,
      chanPoint: e.chanPoint,
      node1Pub: e.node1Pub,
      node2Pub: e.node2Pub,
      capacity: e.capacity,
      node1Policy:
          e.node1Policy != null ? RoutingPolicy.fromGRPC(e.node1Policy) : null,
      node2Policy:
          e.node2Policy != null ? RoutingPolicy.fromGRPC(e.node2Policy) : null,
    );
  }
}
