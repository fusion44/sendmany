import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as lngrpc;

class MPPRecord {
  /// A unique, random identifier used to authenticate the sender as
  /// the intended payer of a multi-path payment. The payment_addr
  /// must be the same for all subpayments, and match the payment_addr
  /// provided in the receiver's invoice. The same payment_addr must
  /// be used on all subpayments.
  List<int> paymentAddr;

  /// The total amount in milli-satoshis being sent as part of a larger
  /// multi-path payment. The caller is responsible for ensuring subpayments
  /// to the same node and payment_hash sum exactly to total_amt_msat.
  /// The same total_amt_msat must be used on all subpayments.
  Int64 totalAmtmSat;

  MPPRecord({
    this.paymentAddr,
    this.totalAmtmSat,
  });

  MPPRecord.fromGrpc(lngrpc.MPPRecord rec)
      : paymentAddr = rec.paymentAddr,
        totalAmtmSat = rec.totalAmtMsat;

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['payment_addr'] = paymentAddr;
    data['total_amt_msat'] = totalAmtmSat;
    return data;
  }
}
