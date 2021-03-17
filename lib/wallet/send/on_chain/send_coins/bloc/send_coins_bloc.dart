import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';

import '../../../../../common/connection/connection_manager/bloc.dart';
import '../../../../../common/connection/lnd_rpc/lnd_rpc.dart';
import 'bloc.dart';

class SendCoinsBloc extends Bloc<SendCoinsEvent, SendCoinsState> {
  SendCoinsBloc() : super(InitialSendCoinsState());

  @override
  Stream<SendCoinsState> mapEventToState(
    SendCoinsEvent event,
  ) async* {
    if (event is DoSendCoinsEvent) {
      yield SubmittingTransactionState();
      var client = LnConnectionDataProvider().lightningClient;
      var macaroon = LnConnectionDataProvider().macaroon;
      var opts = CallOptions(metadata: {'macaroon': macaroon});
      var req = SendCoinsRequest();
      req.addr = event.address;
      req.amount = event.amount;

      try {
        final resp = await client.sendCoins(req, options: opts);
        yield TransactionSubmittedState(resp.txid);
      } catch (e) {
        var state = SendCoinsErrorState(
          '$e',
          address: event.address,
          amount: event.amount,
        );

        yield state;
      }
    } else if (event is ResetSendCoinsEvent) {
      yield InitialSendCoinsState();
    }
  }
}
