import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

class PendingHtlc {
  final bool incoming;
  final Int64 amount;
  final String outpoint;
  final int maturityHeight;
  final int blocksTilMaturity;
  final int stage;

  PendingHtlc({
    this.incoming,
    this.amount,
    this.outpoint,
    this.maturityHeight,
    this.blocksTilMaturity,
    this.stage,
  });

  static PendingHtlc fromGRPC(grpc.PendingHTLC htlc) {
    return PendingHtlc(
      incoming: htlc.incoming,
      amount: htlc.amount,
      outpoint: htlc.outpoint,
      maturityHeight: htlc.maturityHeight,
      blocksTilMaturity: htlc.blocksTilMaturity,
      stage: htlc.stage,
    );
  }
}
