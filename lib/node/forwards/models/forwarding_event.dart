import 'package:fixnum/fixnum.dart';

import '../../../common/connection/lnd_rpc/rpc.pb.dart' as grpc;

class ForwardingEvent {
  /// DateTime when this circuit was completed
  final DateTime date;

  /// The incoming channel that carried the HTLC
  /// that created the circuit.
  final Int64 chanIdIn;

  /// The outgoing channel that carried the preimage
  /// that completed the circuit.
  final Int64 chanIdOut;

  /// The total amount (in satoshis) of the incoming HTLC
  /// that created half the circuit.
  final Int64 amtIn;

  /// The total amount (in satoshis) of the outgoing HTLC
  /// that created the second half of the circuit.
  final Int64 amtOut;

  /// The total fee (in satoshis) that this payment circuit carried.
  final Int64 fee;

  /// The total fee (in milli-satoshis) that this payment circuit carried.
  final Int64 feeMsat;

  /// The total amount (in milli-satoshis) of the incoming HTLC
  /// that created half the circuit.
  final Int64 amtInMsat;

  /// The total amount (in milli-satoshis) of the outgoing HTLC that
  /// created the second half of the circuit.
  final Int64 amtOutMsat;

  ForwardingEvent({
    this.chanIdIn,
    this.chanIdOut,
    this.amtIn,
    this.amtOut,
    this.fee,
    this.feeMsat,
    this.amtInMsat,
    this.amtOutMsat,
    this.date,
  });

  ForwardingEvent.fromGrpc(grpc.ForwardingEvent resp)
      : chanIdIn = resp.chanIdIn,
        chanIdOut = resp.chanIdOut,
        amtIn = resp.amtIn,
        amtOut = resp.amtOut,
        fee = resp.fee,
        feeMsat = resp.feeMsat,
        amtInMsat = resp.amtInMsat,
        amtOutMsat = resp.amtOutMsat,
        date = DateTime.fromMillisecondsSinceEpoch(
          resp.timestamp.toInt() * 1000,
        );

  ForwardingEvent.fromJson(Map<String, dynamic> json)
      : chanIdIn = json['chan_id_in'],
        chanIdOut = json['chan_id_out'],
        amtIn = json['amt_in'],
        amtOut = json['amt_out'],
        fee = json['fee'],
        feeMsat = json['fee_msat'],
        amtInMsat = json['amt_in_msat'],
        amtOutMsat = json['amt_out_msat'],
        date = json['timestamp_ns'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['chan_id_in'] = chanIdIn;
    data['chan_id_out'] = chanIdOut;
    data['amt_in'] = amtIn;
    data['amt_out'] = amtOut;
    data['fee'] = fee;
    data['fee_msat'] = feeMsat;
    data['amt_in_msat'] = amtInMsat;
    data['amt_out_msat'] = amtOutMsat;
    data['timestamp_ns'] = date;
    return data;
  }
}
