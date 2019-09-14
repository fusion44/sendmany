import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:torden/common/connection/connection_manager/bloc.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import 'package:torden/common/models/models.dart';
import 'package:torden/wallet/receive/lightning/add_invoice_bloc/add_invoice_event.dart';
import 'package:torden/wallet/receive/lightning/add_invoice_bloc/add_invoice_state.dart';

class AddInvoiceBloc extends Bloc<AddInvoiceEvent, AddInvoiceState> {
  @override
  AddInvoiceState get initialState => InitialAddinvoiceState();

  @override
  Stream<AddInvoiceState> mapEventToState(
    AddInvoiceEvent event,
  ) async* {
    if (event is AddInvoiceEvent) {
      var client = LnConnectionDataProvider().lightningClient;
      var macaroon = LnConnectionDataProvider().macaroon;

      var opts = CallOptions(metadata: {
        "macaroon": macaroon,
      });

      grpc.Invoice grpcInvoice = grpc.Invoice();
      grpcInvoice.value = event.value;
      grpcInvoice.memo = event.memo;
      grpc.AddInvoiceResponse resp = await client.addInvoice(
        grpcInvoice,
        options: opts,
      );

      yield AddedInvoiceState(
        Invoice(
          addIndex: resp.addIndex,
          hash: resp.rHash,
          paymentRequest: resp.paymentRequest,
          state: InvoiceState.open,
        ),
      );
    }
  }
}
