import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;

class NodeAddress {
  String network;
  String addr;

  NodeAddress({this.network, this.addr});

  static NodeAddress fromGRPC(grpc.NodeAddress a) {
    return NodeAddress(
      network: a.network,
      addr: a.addr,
    );
  }
}
