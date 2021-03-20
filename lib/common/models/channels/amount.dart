import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;

class Amount {
  final Int64 sat;
  final Int64 msat;

  Amount({this.sat, this.msat});

  Amount.fromGrpc(grpc.Amount amount)
      : sat = amount.sat,
        msat = amount.msat;

  Amount.fromJson(Map<String, dynamic> json)
      : sat = json['sat'],
        msat = json['msat'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['sat'] = sat;
    data['msat'] = msat;
    return data;
  }
}
