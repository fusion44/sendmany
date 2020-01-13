import '../../connection/lnd_rpc/rpc.pb.dart' as grpc;

class Chain {
  /// The blockchain the node is on (eg bitcoin, litecoin)
  String chain;

  /// The network the node is on (eg regtest, testnet, mainnet)
  String network;

  Chain({this.chain, this.network});

  Chain.fromGrpc(grpc.Chain chain)
      : chain = chain.chain,
        network = chain.network;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['chain'] = chain;
    data['network'] = network;
    return data;
  }
}
