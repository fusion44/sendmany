import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';

import '../../../../common/connection/connection_manager/bloc.dart';
import '../../../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../../../common/models/models.dart';
import 'add_invoice_event.dart';
import 'add_invoice_state.dart';

class AddInvoiceBloc extends Bloc<AddInvoiceEvent, AddInvoiceState> {
  AddInvoiceBloc() : super(InitialAddinvoiceState());

  @override
  Stream<AddInvoiceState> mapEventToState(
    AddInvoiceEvent event,
  ) async* {
    if (event is AddInvoiceEvent) {
      var client = LnConnectionDataProvider().lightningClient;
      var macaroon = LnConnectionDataProvider().macaroon;
      var opts = CallOptions(metadata: {'macaroon': macaroon});

      var grpcInvoice = grpc.Invoice();
      grpcInvoice.value = event.value;
      grpcInvoice.memo = event.memo;
      var resp = await client.addInvoice(
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
