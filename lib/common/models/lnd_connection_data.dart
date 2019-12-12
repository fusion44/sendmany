import 'dart:convert';

import 'package:meta/meta.dart';

class LndConnectionData {
  final String name;

  // utf8 formatted certificate
  final List<int> certificate;
  final String macaroon;
  final String host;
  final int port;

  LndConnectionData({
    @required this.name,
    @required this.certificate,
    @required this.macaroon,
    @required this.host,
    @required this.port,
  });

  String toJSON() {
    return json.encode({
      'name': name,
      'certificate': certificate,
      'macaroon': macaroon,
      'host': host,
      'port': port,
    });
  }

  static LndConnectionData fromJSON(String data) {
    var decoded = json.decode(data);

    return LndConnectionData(
      name: decoded['name'],
      certificate: decoded['certificate'].cast<int>(),
      macaroon: decoded['macaroon'],
      host: decoded['host'],
      port: decoded['port'],
    );
  }
}
