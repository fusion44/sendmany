import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;

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

  RoutingPolicy.fromGrpc(grpc.RoutingPolicy policy)
      : timeLockDelta = policy.timeLockDelta,
        minHtlc = policy.minHtlc,
        feeBaseMsat = policy.feeBaseMsat,
        feeRateMilliMsat = policy.feeRateMilliMsat,
        disabled = policy.disabled,
        maxHtlcMsat = policy.maxHtlcMsat,
        lastUpdate = policy.lastUpdate;

  RoutingPolicy.fromJson(Map<String, dynamic> json)
      : timeLockDelta = json['time_lock_delta'],
        minHtlc = Int64.parseInt(json['min_htlc']),
        feeBaseMsat = Int64.parseInt(json['fee_base_msat']),
        feeRateMilliMsat = Int64.parseInt(json['fee_rate_milli_msat']),
        disabled = json['disabled'],
        maxHtlcMsat = Int64.parseInt(json['max_htlc_msat']),
        lastUpdate = json['last_update'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['time_lock_delta'] = timeLockDelta;
    data['min_htlc'] = minHtlc;
    data['fee_base_msat'] = feeBaseMsat;
    data['fee_rate_milli_msat'] = feeRateMilliMsat;
    data['disabled'] = disabled;
    data['max_htlc_msat'] = maxHtlcMsat;
    data['last_update'] = lastUpdate;
    return data;
  }
}
