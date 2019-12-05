import 'package:equatable/equatable.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'package:convert/convert.dart';

class ChannelPoint extends Equatable {
  /// Hex-encoded string representing the funding transaction
  final String fundingTxid;

  /// The index of the output of the funding transaction
  final int outputIndex;

  ChannelPoint({this.fundingTxid, this.outputIndex});

  static ChannelPoint fromGRPC(grpc.ChannelPoint cp) {
    String txid = cp.fundingTxidStr;
    if (txid == null || txid.isEmpty) {
      // LND sends the byte values in reversed order
      txid = hex.encode(cp.fundingTxidBytes.reversed.toList(growable: false));
    }

    return ChannelPoint(
      fundingTxid: txid,
      outputIndex: cp.outputIndex,
    );
  }

  static ChannelPoint fromString(String cp) {
    List<String> data = cp.split(':');
    return ChannelPoint(
      fundingTxid: data[0],
      outputIndex: int.parse(data[1]),
    );
  }

  @override
  List<Object> get props => [toString()];

  @override
  String toString() => '$fundingTxid:$outputIndex';
}
