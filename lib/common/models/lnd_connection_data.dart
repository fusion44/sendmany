import 'dart:convert';

import 'package:meta/meta.dart';

class LndConnectionData {
  String name;

  // utf8 formatted certificate
  List<int> certificate;
  String macaroon;
  String host;
  int port;

  LndConnectionData({
    this.name = "",
    @required this.certificate,
    @required this.macaroon,
    @required this.host,
    @required this.port,
  });

  String toJSON() {
    return json.encode({
      "name": name,
      "certificate": certificate,
      "macaroon": macaroon,
      "host": host,
      "port": port,
    });
  }

  static LndConnectionData fromJSON(String data) {
    var decoded = json.decode(data);

    return LndConnectionData(
      name: decoded["name"],
      certificate: decoded["certificate"].cast<int>(),
      macaroon: decoded["macaroon"],
      host: decoded["host"],
      port: decoded["port"],
    );
  }
}
