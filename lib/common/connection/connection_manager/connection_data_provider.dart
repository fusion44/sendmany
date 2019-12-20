import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';

class LnConnectionDataProvider {
  static final LnConnectionDataProvider _singleton =
      LnConnectionDataProvider._internal();

  LightningClient lightningClient;
  String macaroon;

  factory LnConnectionDataProvider() {
    return _singleton;
  }

  LnConnectionDataProvider._internal();
}
