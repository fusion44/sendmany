import 'package:torden/lightning/lnd/lnd_rpc.dart';

class LnConnectionDataProvider {
  static final LnConnectionDataProvider _singleton =
      new LnConnectionDataProvider._internal();

  LightningClient lightningClient;
  String macaroon;

  factory LnConnectionDataProvider() {
    return _singleton;
  }

  LnConnectionDataProvider._internal();
}
