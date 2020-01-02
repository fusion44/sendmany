import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;
import 'channel_point.dart';
import 'routing_policy.dart';

class ChannelEdge {
  final Int64 channelId;
  final ChannelPoint chanPoint;
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

  ChannelEdge.fromGrpc(grpc.ChannelEdge edge)
      : channelId = edge.channelId,
        chanPoint = ChannelPoint.fromString(edge.chanPoint),
        node1Pub = edge.node1Pub,
        node2Pub = edge.node2Pub,
        capacity = edge.capacity,
        node1Policy = edge.node1Policy != null
            ? RoutingPolicy.fromGrpc(edge.node1Policy)
            : null,
        node2Policy = edge.node2Policy != null
            ? RoutingPolicy.fromGrpc(edge.node2Policy)
            : null;

  ChannelEdge.fromJson(Map<String, dynamic> json)
      : channelId = json['channel_id'],
        chanPoint = json['chan_point'],
        node1Pub = json['node1_pub'],
        node2Pub = json['node2_pub'],
        capacity = Int64.parseInt(json['capacity']),
        node1Policy = json['node1_policy'] != null
            ? RoutingPolicy.fromJson(json['node1_policy'])
            : null,
        node2Policy = json['node2_policy'] != null
            ? RoutingPolicy.fromJson(json['node2_policy'])
            : null;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['channel_id'] = channelId;
    data['chan_point'] = chanPoint;
    data['node1_pub'] = node1Pub;
    data['node2_pub'] = node2Pub;
    data['capacity'] = capacity;
    if (node1Policy != null) {
      data['node1_policy'] = node1Policy.toJson();
    }
    if (node2Policy != null) {
      data['node2_policy'] = node2Policy.toJson();
    }
    return data;
  }
}
