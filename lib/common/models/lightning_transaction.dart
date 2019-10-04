import 'package:fixnum/fixnum.dart';
import 'package:torden/common/models/models.dart';

class LightningTx {
  final String memo;
  final Int64 amountSat;
  final DateTime date;

  LightningTx(this.memo, this.amountSat, this.date);
}

class LightningTxPayment extends LightningTx {
  final Payment payment;

  LightningTxPayment(this.payment)
      : super(payment.memo, payment.valueSat, payment.creationDate);
}

class LightningTxInvoice extends LightningTx {
  final Invoice invoice;

  LightningTxInvoice(this.invoice)
      : super(
          invoice.memo,
          invoice.state == InvoiceState.settled
              ? invoice.amtPaidSat
              : invoice.value,
          invoice.state == InvoiceState.settled
              ? invoice.settleDate
              : invoice.creationDate,
        );
}
