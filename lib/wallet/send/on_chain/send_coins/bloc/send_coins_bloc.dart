import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:torden/common/connection/connection_manager/bloc.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';
import './bloc.dart';

class SendCoinsBloc extends Bloc<SendCoinsEvent, SendCoinsState> {
  @override
  SendCoinsState get initialState => InitialSendCoinsState();

  @override
  Stream<SendCoinsState> mapEventToState(
    SendCoinsEvent event,
  ) async* {
    if (event is DoSendCoinsEvent) {
      var client = LnConnectionDataProvider().lightningClient;
      var macaroon = LnConnectionDataProvider().macaroon;

      var opts = CallOptions(metadata: {
        "macaroon": macaroon,
      });
      SendCoinsRequest req = SendCoinsRequest();
      req.addr = event.address;
      req.amount = event.amount;

      SendCoinsResponse resp = await client.sendCoins(req, options: opts);
      yield TransactionSubmittedState(resp.txid);
    } else if (event is ResetSendCoinsEvent) {
      yield InitialSendCoinsState();
    }
  }
}
