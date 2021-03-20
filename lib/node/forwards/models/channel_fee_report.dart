import '../../../common/connection/lnd_rpc/rpc.pb.dart' as grpc;

class ChannelFeeReport {
  /// The short channel id that this fee report belongs to.
  final int chanId;

  ///	The channel that this fee report belongs to.
  final String channelPoint;

  /// The base fee charged regardless of the number of milli-satoshis sent.
  final int baseFeeMsat;

  /// The amount charged per milli-satoshis transferred expressed in
  /// millionths of a satoshi.
  final int feePerMil;

  /// The effective fee rate in milli-satoshis. Computed by
  /// dividing the fee_per_mil value by 1 million.
  final double feeRate;

  ChannelFeeReport({
    this.chanId,
    this.channelPoint,
    this.baseFeeMsat,
    this.feePerMil,
    this.feeRate,
  });
  ChannelFeeReport.fromGrpc(grpc.ChannelFeeReport v)
      : chanId = v.chanId.toInt(),
        channelPoint = v.channelPoint,
        baseFeeMsat = v.baseFeeMsat.toInt(),
        feePerMil = v.feePerMil.toInt(),
        feeRate = v.feeRate;

  ChannelFeeReport.fromJson(Map<String, dynamic> json)
      : chanId = json['chan_id'],
        channelPoint = json['channel_point'],
        baseFeeMsat = json['base_fee_msat'],
        feePerMil = json['fee_per_mil'],
        feeRate = json['fee_rate'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['chan_id'] = chanId;
    data['channel_point'] = channelPoint;
    data['base_fee_msat'] = baseFeeMsat;
    data['fee_per_mil'] = feePerMil;
    data['fee_rate'] = feeRate;
    return data;
  }
}
