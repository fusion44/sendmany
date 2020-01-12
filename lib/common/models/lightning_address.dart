import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

class LightningAddress {
  /// The identity pubkey of the Lightning node
  final String pubkey;

  /// The network location of the lightning node, e.g. 69.69.69.69:1337 or localhost:10011
  final String host;

  const LightningAddress(this.pubkey, this.host);

  /// Convert to a LND gRPC Object
  grpc.LightningAddress toGRPC() {
    var addr = grpc.LightningAddress();
    addr.host = host;
    addr.pubkey = pubkey;
    return addr;
  }

  /// Convert from a LND gRPC Object
  static LightningAddress fromGRPC(grpc.LightningAddress address) {
    return LightningAddress(address.pubkey, address.host);
  }
}
