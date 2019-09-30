import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:torden/common/connection/connection_manager/bloc.dart';
import 'package:torden/common/models/models.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart' as lngrpc;

import 'list_lightning_transactions_event.dart';
import 'list_lightning_transactions_state.dart';

class ListLightningTxBloc
    extends Bloc<ListLightningTxEvent, ListLightningTxState> {
  @override
  ListLightningTxState get initialState => InitialListLightningTxState();

  @override
  Stream<ListLightningTxState> mapEventToState(
    ListLightningTxEvent event,
  ) async* {
    var client = LnConnectionDataProvider().lightningClient;

    lngrpc.ListPaymentsRequest paymentsRequest = lngrpc.ListPaymentsRequest();
    lngrpc.ListInvoiceRequest invoicesRequest = lngrpc.ListInvoiceRequest();

    try {
      var responseList = await Future.wait([
        client.listPayments(paymentsRequest),
        client.listInvoices(invoicesRequest),
      ]);

      List<LightningTx> tx = [];
      lngrpc.ListPaymentsResponse paymentsResponse = responseList[0];
      lngrpc.ListInvoiceResponse invoiceResponse = responseList[1];
      paymentsResponse.payments.forEach((lngrpc.Payment grpcPayment) {
        if (grpcPayment.status == lngrpc.Payment_PaymentStatus.SUCCEEDED) {
          Payment payment = Payment.fromGRPC(grpcPayment);
          tx.add(LightningTxPayment(payment));
        }
      });
      invoiceResponse.invoices.forEach((lngrpc.Invoice grpcInvoice) {
        if (grpcInvoice.state == lngrpc.Invoice_InvoiceState.SETTLED) {
          Invoice invoice = Invoice.fromGRPC(grpcInvoice);
          tx.add(LightningTxInvoice(invoice));
        }
      });

      tx.sort((LightningTx a, LightningTx b) {
        return b.date.compareTo(a.date);
      });

      yield LoadingLightningTxFinishedState(tx);
    } catch (error) {
      yield LoadingLightningTxErrorState(error);
    }
  }
}
