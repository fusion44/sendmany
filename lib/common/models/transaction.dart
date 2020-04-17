import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/models/models.dart';

class Tx {
  final String memo;
  final Int64 amountSat;
  final Int64 amountFees;
  final DateTime date;

  Tx(this.memo, this.amountSat, this.date, {this.amountFees = Int64.ZERO});
}

class TxLightningPayment extends Tx {
  final Payment payment;

  TxLightningPayment(this.payment)
      : super(
          payment.memo,
          payment.valueSat,
          payment.creationDate,
          amountFees: payment.feeSat,
        );
}

class TxLightningInvoice extends Tx {
  final Invoice invoice;

  TxLightningInvoice(this.invoice)
      : super(
          invoice.memo,
          invoice.state == InvoiceState.settled
              ? Int64(invoice.amtPaidmSat.toInt() ~/ 1000)
              : invoice.value,
          invoice.state == InvoiceState.settled
              ? invoice.settleDate
              : invoice.creationDate,
        );
}

class TxOnchain extends Tx {
  final OnchainTransaction tx;

  TxOnchain(this.tx, {memo = ''})
      : super(
          memo,
          tx.amount,
          tx.timeStampDateTime,
          amountFees: tx.totalFees,
        );
}
