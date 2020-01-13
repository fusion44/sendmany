import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;

class HopHint {
  // The public key of the node at the start of the channel.
  final String nodeId;

  //The unique identifier of the channel.
  final Int64 chanId;

  // The base fee of the channel denominated in millisatoshis.
  final int feeBaseMsat;

  //The fee rate of the channel for sending one satoshi across it denominated in millionths of a satoshi.
  final int feeProportionalMillionths;

  // The time-lock delta of the channel.
  final int cltvExpiryDelta;

  HopHint({
    this.nodeId,
    this.chanId,
    this.feeBaseMsat,
    this.feeProportionalMillionths,
    this.cltvExpiryDelta,
  });

  HopHint.fromGrpc(grpc.HopHint hh)
      : nodeId = hh.nodeId,
        chanId = hh.chanId,
        feeBaseMsat = hh.feeBaseMsat,
        feeProportionalMillionths = hh.feeProportionalMillionths,
        cltvExpiryDelta = hh.cltvExpiryDelta;
}
