import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';

class LnConnectionDataProvider {
  static final LnConnectionDataProvider _singleton =
      new LnConnectionDataProvider._internal();

  ClientChannel channel;
  LightningClient lightningClient;
  String macaroon;

  factory LnConnectionDataProvider() {
    return _singleton;
  }

  LnConnectionDataProvider._internal();
}
