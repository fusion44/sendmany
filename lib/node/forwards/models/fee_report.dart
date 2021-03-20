import 'package:fixnum/fixnum.dart';

import '../../../common/connection/lnd_rpc/rpc.pb.dart' as grpc;
import 'channel_fee_report.dart';

/// FeeReport allows the caller to obtain a report detailing the
/// current fee schedule enforced by the node globally for each channel.
class FwdFeeReport {
  /// An array of channel fee reports which describes the
  /// current fee schedule for each channel.
  final List<ChannelFeeReport> channelFees;

  /// The total amount of fee revenue (in satoshis) the
  /// switch has collected over the past 24 hrs.
  final Int64 dayFeeSum;

  /// The total amount of fee revenue (in satoshis) the
  /// switch has collected over the past 1 week.
  final Int64 weekFeeSum;

  /// The total amount of fee revenue (in satoshis) the
  /// switch has collected over the past 1 month.
  final Int64 monthFeeSum;

  FwdFeeReport({
    this.channelFees,
    this.dayFeeSum,
    this.weekFeeSum,
    this.monthFeeSum,
  });

  FwdFeeReport.fromGrpc(grpc.FeeReportResponse resp)
      : channelFees = _getChannelFeeListGrpc(resp.channelFees),
        dayFeeSum = resp.dayFeeSum,
        weekFeeSum = resp.weekFeeSum,
        monthFeeSum = resp.monthFeeSum;

  FwdFeeReport.fromJson(Map<String, dynamic> json)
      : channelFees = _getChannelFeeListJson(json),
        dayFeeSum = json['day_fee_sum'],
        weekFeeSum = json['week_fee_sum'],
        monthFeeSum = json['month_fee_sum'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (channelFees != null) {
      data['channel_fees'] = channelFees.map((v) => v.toJson()).toList();
    }
    data['day_fee_sum'] = dayFeeSum;
    data['week_fee_sum'] = weekFeeSum;
    data['month_fee_sum'] = monthFeeSum;
    return data;
  }
}

List<ChannelFeeReport> _getChannelFeeListGrpc(
    List<grpc.ChannelFeeReport> channFeeReps) {
  var channelFees = <ChannelFeeReport>[];
  if (channFeeReps != null || channFeeReps.isNotEmpty) {
    channFeeReps.forEach((v) {
      channelFees.add(ChannelFeeReport.fromGrpc(v));
    });
  }
  return channelFees;
}

List<ChannelFeeReport> _getChannelFeeListJson(Map<String, dynamic> json) {
  var channelFees = <ChannelFeeReport>[];
  if (json['channel_fees'] != null) {
    json['channel_fees'].forEach((v) {
      channelFees.add(ChannelFeeReport.fromJson(v));
    });
  }
  return channelFees;
}
