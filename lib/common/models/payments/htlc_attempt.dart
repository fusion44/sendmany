import '../../connection/lnd_rpc/lnd_rpc.dart' as lngrpc;
import 'route.dart';

enum HTLCAttemptStatus { inFlight, succeeded, failed }

class HTLCAttempt {
  /// The status of the HTLC.
  final HTLCAttemptStatus status;

  ///	The route taken by this HTLC.
  final Route route;

  /// The time at which this HTLC was sent.
  final DateTime attemptTime;

  /// The time at which this HTLC was settled or failed.
  /// This value will not be set if the HTLC is still IN_FLIGHT.
  final DateTime resolveTime;

  HTLCAttempt({
    this.status,
    this.route,
    this.attemptTime,
    this.resolveTime,
  });

  static HTLCAttempt fromGrpc(lngrpc.HTLCAttempt htlc) {
    HTLCAttemptStatus status;
    switch (htlc.status) {
      case lngrpc.HTLCAttempt_HTLCStatus.IN_FLIGHT:
        status = HTLCAttemptStatus.inFlight;
        break;
      case lngrpc.HTLCAttempt_HTLCStatus.SUCCEEDED:
        status = HTLCAttemptStatus.succeeded;
        break;
      default:
        status = HTLCAttemptStatus.failed;
    }

    var attemptTime = DateTime.fromMillisecondsSinceEpoch(
      htlc.attemptTimeNs.toInt() * 1000 ?? 0,
    );
    var resolveTime = DateTime.fromMillisecondsSinceEpoch(
      htlc.attemptTimeNs.toInt() * 1000 ?? 0,
    );

    return HTLCAttempt(
      status: status,
      route: htlc.route != null ? Route.fromGrpc(htlc.route) : null,
      attemptTime: attemptTime,
      resolveTime: resolveTime,
    );
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['status'] = status;
    if (route != null) data['route'] = route.toJson();
    data['attempt_time_ns'] = attemptTime;
    data['resolve_time_ns'] = resolveTime;
    return data;
  }
}
