// Represents a payment using the lighnting network
import 'package:fixnum/fixnum.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart' as lngrpc;
import 'package:torden/common/utils.dart';

enum PaymentStatus { unkown, inFlight, succeeded, failed }

class Payment {
  // it is encoded into the paymentRequest and extractet here as a convenience
  final String memo;
  final String paymentHash;
  final DateTime creationDate;
  final List<String> path;
  final String paymentPreimage;
  final Int64 valueSat;
  final Int64 valuemSat;
  final String paymentRequest;
  final PaymentStatus status;
  final Int64 feeSat;
  final Int64 feemSat;

  Payment(
    this.memo,
    this.paymentHash,
    this.creationDate,
    this.path,
    this.paymentPreimage,
    this.valueSat,
    this.valuemSat,
    this.paymentRequest,
    this.status,
    this.feeSat,
    this.feemSat,
  );

  static Payment fromGRPC(lngrpc.Payment grpcPayment) {
    PaymentStatus status;
    switch (grpcPayment.status) {
      case lngrpc.Payment_PaymentStatus.UNKNOWN:
        status = PaymentStatus.unkown;
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
        status = PaymentStatus.unkown;
        print(
          "Unknown lngrpc.Payment_PaymentStatus state ${grpcPayment.status}",
        );
    }

    return Payment(
      getMemoFromPaymentRequst(grpcPayment.paymentRequest),
      grpcPayment.paymentHash,
      DateTime.fromMillisecondsSinceEpoch(
        grpcPayment.creationDate.toInt() * 1000 ?? 0,
      ),
      grpcPayment.path,
      grpcPayment.paymentPreimage,
      grpcPayment.valueSat,
      grpcPayment.valueMsat,
      grpcPayment.paymentRequest,
      status,
      grpcPayment.feeSat,
      grpcPayment.feeMsat,
    );
  }
}
