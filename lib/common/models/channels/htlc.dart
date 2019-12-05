import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

class HTLC {
  final bool incoming;
  final Int64 amount;
  final List<int> hashLock;
  final int expirationHeight;

  HTLC({
    this.incoming,
    this.amount,
    this.hashLock,
    this.expirationHeight,
  });

  static HTLC fromGRPC(grpc.HTLC htlc) {
    return HTLC(
      incoming: htlc.incoming,
      amount: htlc.amount,
      hashLock: htlc.hashLock,
      expirationHeight: htlc.expirationHeight,
    );
  }
}
