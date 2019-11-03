import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

class RoutingPolicy {
  final int timeLockDelta;
  final Int64 minHtlc;
  final Int64 feeBaseMsat;
  final Int64 feeRateMilliMsat;
  final bool disabled;
  final Int64 maxHtlcMsat;
  final int lastUpdate;

  RoutingPolicy({
    this.timeLockDelta,
    this.minHtlc,
    this.feeBaseMsat,
    this.feeRateMilliMsat,
    this.disabled,
    this.maxHtlcMsat,
    this.lastUpdate,
  });

  static RoutingPolicy fromGRPC(grpc.RoutingPolicy p) {
    return RoutingPolicy(
      timeLockDelta: p.timeLockDelta,
      minHtlc: p.minHtlc,
      feeBaseMsat: p.feeBaseMsat,
      feeRateMilliMsat: p.feeRateMilliMsat,
      disabled: p.disabled,
      maxHtlcMsat: p.maxHtlcMsat,
      lastUpdate: p.lastUpdate,
    );
  }
}
