import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'hop_hint.dart';

enum InvoiceState { open, settled, canceled, accepted }

class Invoice {
  final String memo;
  final List<int> preimage;
  final List<int> hash;
  final Int64 value;
  final DateTime creationDate;
  final DateTime settleDate;
  final String paymentRequest;
  final List<int> descriptionHash;
  final Int64 expiry;
  final String fallbackAddr;
  final Int64 cltvExpiry;
  final List<LnHopHint> routeHints = [];
  final bool private;
  final Int64 addIndex;
  final Int64 settleIndex;
  final Int64 amtPaidSat;
  final Int64 amtPaidmSat;
  final InvoiceState state;

  Invoice({
    this.memo,
    this.preimage,
    this.hash,
    this.value,
    this.creationDate,
    this.settleDate,
    this.paymentRequest,
    this.descriptionHash,
    this.expiry,
    this.fallbackAddr,
    this.cltvExpiry,
    this.private,
    this.addIndex,
    this.settleIndex,
    this.amtPaidSat,
    this.amtPaidmSat,
    this.state,
  });

  static Invoice fromGRPC(grpc.Invoice grpcInvoice) {
    InvoiceState state;
    switch (grpcInvoice.state) {
      case grpc.Invoice_InvoiceState.ACCEPTED:
        state = InvoiceState.accepted;
        break;
      case grpc.Invoice_InvoiceState.CANCELED:
        state = InvoiceState.canceled;
        break;
      case grpc.Invoice_InvoiceState.SETTLED:
        state = InvoiceState.settled;
        break;
      default:
        state = InvoiceState.open;
    }

    return Invoice(
      memo: grpcInvoice.memo,
      preimage: grpcInvoice.rPreimage,
      hash: grpcInvoice.rHash,
      value: grpcInvoice.value,
      creationDate: DateTime.fromMillisecondsSinceEpoch(
        grpcInvoice.creationDate.toInt() * 1000 ?? 0,
      ),
      settleDate: DateTime.fromMillisecondsSinceEpoch(
        grpcInvoice.settleDate.toInt() * 1000 ?? 0,
      ),
      paymentRequest: grpcInvoice.paymentRequest,
      descriptionHash: grpcInvoice.descriptionHash,
      expiry: grpcInvoice.expiry,
      fallbackAddr: grpcInvoice.fallbackAddr,
      cltvExpiry: grpcInvoice.cltvExpiry,
      private: grpcInvoice.private,
      addIndex: grpcInvoice.addIndex,
      settleIndex: grpcInvoice.settleIndex,
      amtPaidSat: grpcInvoice.amtPaidSat,
      amtPaidmSat: grpcInvoice.amtPaidMsat,
      state: state,
    );
  }
}
