import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as lngrpc;
import 'hop.dart';

/// A path through the channel graph which runs over one or more channels
/// in succession. This class carries all the information required to
/// craft the Sphinx onion packet, and send the payment along the first
/// hop in the path. A route is only selected as valid if all the channels
/// have sufficient capacity to carry the initial payment amount after fees
/// are accounted for.
class Route {
  /// The cumulative (final) time lock across the entire route. This is
  /// the CLTV value that should be extended to the first hop in the route.
  /// All other hops will decrement the time-lock as advertised, leaving
  /// enough time for all hops to wait for or present the payment preimage
  /// to complete the payment.
  final int totalTimeLock;

  /// The total amount of funds required to complete a payment over this
  /// route. This value includes the cumulative fees at each hop. As a result,
  /// the HTLC extended to the first-hop in the route will need to have at
  /// least this many satoshis, otherwise the route will fail at an
  /// intermediate node due to an insufficient amount of fees.
  final Int64 totalAmt;

  /// Contains details concerning the specific forwarding details at each hop.
  final List<Hop> hops;

  /// The total fees in millisatoshis.
  final Int64 totalFeesMsat;

  /// The total amount in millisatoshis.
  final Int64 totalAmtMsat;

  Route({
    this.totalTimeLock,
    this.totalAmt,
    this.hops,
    this.totalFeesMsat,
    this.totalAmtMsat,
  });

  Route.fromGrpc(lngrpc.Route route)
      : totalTimeLock = route.totalTimeLock,
        totalAmt = route.totalAmtMsat,
        hops = _buildHopList(route),
        totalFeesMsat = route.totalFeesMsat,
        totalAmtMsat = route.totalAmtMsat;

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['total_time_lock'] = totalTimeLock;
    data['total_amt'] = totalAmt;
    if (hops != null) {
      data['hops'] = hops.map((v) => v.toJson()).toList();
    }
    data['total_fees_msat'] = totalFeesMsat;
    data['total_amt_msat'] = totalAmtMsat;
    return data;
  }
}

List<Hop> _buildHopList(lngrpc.Route r) {
  var hops = <Hop>[];
  r.hops.forEach((v) {
    hops.add(Hop.fromGrpc(v));
  });
  return hops;
}
