import 'package:flutter/material.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;
import 'node_address.dart';

class LightningNode {
  int lastUpdate;
  String pubKey;
  String alias;
  List<NodeAddress> addresses;
  Color color;

  LightningNode({
    this.lastUpdate,
    this.pubKey,
    this.alias,
    this.addresses,
    this.color,
  });

  static LightningNode fromGRPC(grpc.LightningNode n) {
    var addresses = <NodeAddress>[];
    if (n.addresses != null) {
      n.addresses.forEach((a) {
        addresses.add(NodeAddress.fromGRPC(a));
      });
    }

    var c = n.color.replaceAll('#', '0xff');

    return LightningNode(
      lastUpdate: n.lastUpdate,
      pubKey: n.pubKey,
      alias: n.alias,
      addresses: addresses,
      color: Color(int.parse(c)),
    );
  }
}
