import 'package:grpc/grpc.dart';

import '../lnd_rpc/lnd_rpc.dart';

class LnConnectionDataProvider {
  static final LnConnectionDataProvider _singleton =
      LnConnectionDataProvider._internal();

  ClientChannel channel;
  LightningClient lightningClient;
  String macaroon;

  factory LnConnectionDataProvider() {
    return _singleton;
  }

  LnConnectionDataProvider._internal();
}
