import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;

enum InvoiceHTLCState { accepted, settled, canceled }

/// Details of an HTLC that paid to an invoice
class InvoiceHTLC {
  /// Short channel id over which the htlc was received.
  final Int64 chanId;

  /// Index identifying the htlc on the channel.
  final Int64 htlcIndex;

  /// The amount of the htlc in msat.
  final Int64 amtMsat;

  /// Block height at which this htlc was accepted.
  final int acceptHeight;

  /// Time at which this htlc was accepted.
  final DateTime acceptTime;

  /// Time at which this htlc was settled or canceled.
  final DateTime resolveTime;

  /// Block height at which this htlc expires.
  final int expiryHeight;

  /// Current state the htlc is in.
  final InvoiceHTLCState state;

  /// Custom tlv records.
  final Map<Int64, List<int>> customRecords;

  /// The total amount of the mpp payment in msat.
  final Int64 mppTotalAmtMsat;

  InvoiceHTLC({
    this.chanId,
    this.htlcIndex,
    this.amtMsat,
    this.acceptHeight,
    this.acceptTime,
    this.resolveTime,
    this.expiryHeight,
    this.state,
    this.customRecords,
    this.mppTotalAmtMsat,
  });

  InvoiceHTLC.fromGrpc(grpc.InvoiceHTLC h)
      : chanId = h.chanId,
        htlcIndex = h.htlcIndex,
        amtMsat = h.amtMsat,
        acceptHeight = h.acceptHeight,
        acceptTime = DateTime.fromMillisecondsSinceEpoch(
          h.acceptTime.toInt() * 1000 ?? 0,
        ),
        resolveTime = DateTime.fromMillisecondsSinceEpoch(
          h.resolveTime.toInt() * 1000 ?? 0,
        ),
        expiryHeight = h.expiryHeight,
        state = _getState(h.state),
        customRecords = h.customRecords,
        mppTotalAmtMsat = h.mppTotalAmtMsat;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['chan_id'] = chanId;
    data['htlc_index'] = htlcIndex;
    data['amt_msat'] = amtMsat;
    data['accept_height'] = acceptHeight;
    data['accept_time'] = acceptTime;
    data['resolve_time'] = resolveTime;
    data['expiry_height'] = expiryHeight;
    data['state'] = state;
    if (customRecords != null) {
      data['custom_records'] = customRecords;
    }
    data['mpp_total_amt_msat'] = mppTotalAmtMsat;
    return data;
  }
}

InvoiceHTLCState _getState(grpc.InvoiceHTLCState state) {
  switch (state) {
    case grpc.InvoiceHTLCState.ACCEPTED:
      return InvoiceHTLCState.accepted;
      break;
    case grpc.InvoiceHTLCState.SETTLED:
      return InvoiceHTLCState.settled;
      break;
    case grpc.InvoiceHTLCState.CANCELED:
      return InvoiceHTLCState.canceled;
      break;
    default:
      print('Unknown InvoiceHTLCState');
      return null;
  }
}
