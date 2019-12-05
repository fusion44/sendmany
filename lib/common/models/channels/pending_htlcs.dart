import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

class PendingHtlc {
  /// The direction within the channel that the htlc was sent
  final bool incoming;

  /// The total value of the htlc
  final Int64 amount;

  /// The final output to be swept back to the user's wallet
  final String outpoint;

  /// The next block height at which we can spend the current stage
  final int maturityHeight;

  /// The number of blocks remaining until the current stage
  /// can be swept. Negative values indicate how many blocks
  /// have passed since becoming mature.
  final int blocksTilMaturity;

  /// Indicates whether the htlc is in its first or second
  /// stage of recovery
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
