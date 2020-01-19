// Represents a payment using the lightning network
import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as lngrpc;
import 'package:sendmany/common/utils.dart';

import 'htlc_attempt.dart';

enum PaymentStatus { unknown, inFlight, succeeded, failed }

class Payment {
  // it is encoded into the paymentRequest and extracted here as a convenience
  final String memo;

  /// The payment hash
  final String paymentHash;

  /// Time at which the payment was created
  final DateTime creationDate;

  ///	The payment preimage
  final String paymentPreimage;

  /// The value of the payment in satoshis
  final Int64 valueSat;

  /// The value of the payment in milli-satoshis
  final Int64 valuemSat;

  /// The optional payment request being fulfilled.
  final String paymentRequest;

  /// The status of the payment.
  final PaymentStatus status;

  /// The fee paid for this payment in satoshis
  final Int64 feeSat;

  /// The fee paid for this payment in milli-satoshis
  final Int64 feemSat;

  /// The HTLCs made in attempt to settle the payment. (EXPERIMENTAL)
  List<HTLCAttempt> htlcs;

  Payment(
    this.memo,
    this.paymentHash,
    this.creationDate,
    this.paymentPreimage,
    this.valueSat,
    this.valuemSat,
    this.paymentRequest,
    this.status,
    this.feeSat,
    this.feemSat,
    this.htlcs,
  );

  static Payment fromGRPC(lngrpc.Payment grpcPayment) {
    PaymentStatus status;
    switch (grpcPayment.status) {
      case lngrpc.Payment_PaymentStatus.UNKNOWN:
        status = PaymentStatus.unknown;
        break;
      case lngrpc.Payment_PaymentStatus.IN_FLIGHT:
        status = PaymentStatus.inFlight;
        break;
      case lngrpc.Payment_PaymentStatus.SUCCEEDED:
        status = PaymentStatus.succeeded;
        break;
      case lngrpc.Payment_PaymentStatus.FAILED:
        status = PaymentStatus.failed;
        break;
      default:
        status = PaymentStatus.unknown;
        print(
          'Unknown lngrpc.Payment_PaymentStatus state ${grpcPayment.status}',
        );
    }

    DateTime date;
    try {
      date = DateTime.fromMillisecondsSinceEpoch(
        grpcPayment.creationTimeNs.toInt() ~/ 1000000 ?? 0,
      );
    } catch (e) {
      date = DateTime(1980, 1, 1);
      print(e);
    }

    var htlcs = <HTLCAttempt>[];
    grpcPayment.htlcs.forEach((grpcHTLC) {
      htlcs.add(HTLCAttempt.fromGrpc(grpcHTLC));
    });

    return Payment(
      getMemoFromPaymentRequest(grpcPayment.paymentRequest),
      grpcPayment.paymentHash,
      date,
      grpcPayment.paymentPreimage,
      grpcPayment.valueSat,
      grpcPayment.valueMsat,
      grpcPayment.paymentRequest,
      status,
      grpcPayment.feeSat,
      grpcPayment.feeMsat,
      htlcs,
    );
  }
}
