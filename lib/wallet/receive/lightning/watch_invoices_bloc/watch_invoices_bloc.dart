import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';

import '../../../../common/connection/connection_manager/bloc.dart';
import '../../../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../../../common/models/models.dart';
import 'watch_invoices_event.dart';
import 'watch_invoices_state.dart';

class _SubscribeInvoicesEvent extends WatchInvoicesEvent {
  final grpc.Invoice grpcInvoice;

  _SubscribeInvoicesEvent(this.grpcInvoice);
}

class WatchInvoicesBloc extends Bloc<WatchInvoicesEvent, WatchInvoicesState> {
  ResponseStream<grpc.Invoice> _responseStream;

  WatchInvoicesBloc() : super(InitialWatchInvoicesState()) {
    var client = LnConnectionDataProvider().lightningClient;
    var macaroon = LnConnectionDataProvider().macaroon;

    var opts = CallOptions(metadata: {'macaroon': macaroon});

    _responseStream = client.subscribeInvoices(
      grpc.InvoiceSubscription(),
      options: opts,
    );
    _responseStream.listen((onData) {
      add(_SubscribeInvoicesEvent(onData));
    });
  }

  @override
  Stream<WatchInvoicesState> mapEventToState(
    WatchInvoicesEvent event,
  ) async* {
    if (event is _SubscribeInvoicesEvent) {
      yield InvoiceChangedState(Invoice.fromGRPC(event.grpcInvoice));
    }
  }
}
