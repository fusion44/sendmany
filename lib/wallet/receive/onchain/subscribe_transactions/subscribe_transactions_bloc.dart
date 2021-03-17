import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';

import '../../../../common/connection/connection_manager/bloc.dart';
import '../../../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../../../common/models/models.dart';
import 'bloc.dart';

class SubscribeTransactionsBloc
    extends Bloc<SubscribeTransactionsEvent, SubscribeTransactionsState> {
  SubscribeTransactionsBloc() : super(InitialSubscribeTransactionsState()) {
    _subscribeTransactions();
  }

  @override
  Stream<SubscribeTransactionsState> mapEventToState(
    SubscribeTransactionsEvent event,
  ) async* {
    if (event is TransactionChangedEvent) {
      yield TransactionChangedState(event.tx);
    }
  }

  void _subscribeTransactions() {
    var client = LnConnectionDataProvider().lightningClient;
    var macaroon = LnConnectionDataProvider().macaroon;
    var opts = CallOptions(metadata: {'macaroon': macaroon});

    var req = grpc.GetTransactionsRequest();
    ResponseStream stream = client.subscribeTransactions(
      req,
      options: opts,
    );

    stream.listen((onData) {
      var m = OnchainTransaction.fromLND(onData);
      add(TransactionChangedEvent(m));
    });
  }
}
