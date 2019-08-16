import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:torden/common/connection/connection_manager/bloc.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';
import 'package:torden/common/models/models.dart';
import './bloc.dart';

// Exclusive for reload event originating from polling timer
class _ReloadTransactionsEvent extends GetTransactionsEvent {}

// Event when a new message from the update subscription is received
class _SubscribeTransactionEvent extends GetTransactionsEvent {
  final Transaction tx;

  _SubscribeTransactionEvent(this.tx);
}

class LoadTransactionsBloc
    extends Bloc<GetTransactionsEvent, LoadTransactionsState> {
  // TODO: replace polling with a subscription to a full node
  ResponseStream<Transaction> _responseStream;
  int pollInterval = 0;
  Timer _timer;
  int _lastBlockHight = 0;
  bool _checkingBlockHeight = false;

  LoadTransactionsBloc() {
    _setupTransactionSubscription();
  }

  @override
  void dispose() {
    if (_timer != null && _timer.isActive) {
      _timer.cancel();
    }

    super.dispose();
  }

  void _setupTransactionSubscription() {
    var client = LnConnectionDataProvider().lightningClient;
    var macaroon = LnConnectionDataProvider().macaroon;

    var opts = CallOptions(metadata: {
      "macaroon": macaroon,
    });

    GetTransactionsRequest req = GetTransactionsRequest();
    _responseStream = client.subscribeTransactions(
      req,
      options: opts,
    );
    _responseStream.listen((onData) {
      dispatch(_SubscribeTransactionEvent(onData));
    });
  }

  _setupTimer() {
    if (_timer != null && _timer.isActive) {
      _timer.cancel();
    }

    _timer = Timer.periodic(Duration(seconds: pollInterval), (timer) {
      if (pollInterval == 0) {
        _timer.cancel();
        _timer = null;
      } else {
        _checkBlockHeight();
      }
    });
  }

  Future _checkBlockHeight() async {
    if (_checkingBlockHeight) {
      return;
    }
    _checkingBlockHeight = true;
    var client = LnConnectionDataProvider().lightningClient;
    var macaroon = LnConnectionDataProvider().macaroon;

    var opts = CallOptions(metadata: {
      "macaroon": macaroon,
    });

    GetInfoRequest req = GetInfoRequest();
    GetInfoResponse info = await client.getInfo(
      req,
      options: opts,
    );

    if (info.blockHeight != _lastBlockHight) {
      dispatch(_ReloadTransactionsEvent());
      _lastBlockHight = info.blockHeight;
    }
    _checkingBlockHeight = false;
  }

  @override
  LoadTransactionsState get initialState => InitialLoadTransactionsState();

  @override
  Stream<LoadTransactionsState> mapEventToState(
    GetTransactionsEvent event,
  ) async* {
    if (event is ChangePollTransactionsIntervalEvent) {
      pollInterval = event.seconds;
      _setupTimer();
    } else if (event is LoadTransactionsEvent) {
      if (currentState is LoadingTransactionsFinishedState) {
        // We have to convert, otherwise the linter won't be happy
        LoadingTransactionsFinishedState state = currentState;
        yield LoadingTransactionsState(state.transactions);
      } else {
        yield LoadingTransactionsState(null);
      }

      yield await _loadTransactions();
    } else if (event is _ReloadTransactionsEvent ||
        event is _SubscribeTransactionEvent) {
      yield ReloadingTransactionsState(currentState.transactions);
      LoadingTransactionsFinishedState state = await _loadTransactions();
      yield state;
    } else {
      print("Unknown Event: $event");
    }
  }

  Future<LoadingTransactionsFinishedState> _loadTransactions() async {
    var client = LnConnectionDataProvider().lightningClient;
    var macaroon = LnConnectionDataProvider().macaroon;

    var opts = CallOptions(metadata: {
      "macaroon": macaroon,
    });

    GetTransactionsRequest req = GetTransactionsRequest();
    TransactionDetails transactions = await client.getTransactions(
      req,
      options: opts,
    );
    var reversedList = transactions.transactions.reversed;
    List<TransactionModel> models = reversedList
        .where((tx) => tx.amount != 0)
        .map((tx) => TransactionModel.fromLND(tx))
        .toList();

    return LoadingTransactionsFinishedState(models);
  }
}
