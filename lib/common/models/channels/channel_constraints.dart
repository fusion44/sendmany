import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;

class ChannelConstraints {
  final int csvDelay;
  final Int64 chanReserveSat;
  final Int64 dustLimitSat;
  final Int64 maxPendingAmtMsat;
  final Int64 minHtlcMsat;
  final int maxAcceptedHtlcs;

  ChannelConstraints({
    this.csvDelay,
    this.chanReserveSat,
    this.dustLimitSat,
    this.maxPendingAmtMsat,
    this.minHtlcMsat,
    this.maxAcceptedHtlcs,
  });

  ChannelConstraints.fromGrpc(grpc.ChannelConstraints c)
      : csvDelay = c.csvDelay,
        chanReserveSat = c.chanReserveSat,
        dustLimitSat = c.dustLimitSat,
        maxPendingAmtMsat = c.maxPendingAmtMsat,
        minHtlcMsat = c.minHtlcMsat,
        maxAcceptedHtlcs = c.maxAcceptedHtlcs;

  ChannelConstraints.fromJson(Map<String, dynamic> json)
      : csvDelay = json['csv_delay'],
        chanReserveSat = json['chan_reserve_sat'],
        dustLimitSat = json['dust_limit_sat'],
        maxPendingAmtMsat = json['max_pending_amt_msat'],
        minHtlcMsat = json['min_htlc_msat'],
        maxAcceptedHtlcs = json['max_accepted_htlcs'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['csv_delay'] = csvDelay;
    data['chan_reserve_sat'] = chanReserveSat;
    data['dust_limit_sat'] = dustLimitSat;
    data['max_pending_amt_msat'] = maxPendingAmtMsat;
    data['min_htlc_msat'] = minHtlcMsat;
    data['max_accepted_htlcs'] = maxAcceptedHtlcs;
    return data;
  }

  ChannelConstraints copyWith({
    csvDelay,
    chanReserveSat,
    dustLimitSat,
    maxPendingAmtMsat,
    minHtlcMsat,
    maxAcceptedHtlcs,
  }) {
    return ChannelConstraints(
      csvDelay: csvDelay ?? this.csvDelay,
      chanReserveSat: chanReserveSat ?? this.chanReserveSat,
      dustLimitSat: dustLimitSat ?? this.dustLimitSat,
      maxPendingAmtMsat: maxPendingAmtMsat ?? this.maxPendingAmtMsat,
      minHtlcMsat: minHtlcMsat ?? this.minHtlcMsat,
      maxAcceptedHtlcs: maxAcceptedHtlcs ?? this.maxAcceptedHtlcs,
    );
  }
}
