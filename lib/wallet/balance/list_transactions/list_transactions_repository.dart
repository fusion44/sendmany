import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:rxdart/rxdart.dart';

import '../../../common/connection/connection_manager/connection_data_provider.dart';
import '../../../common/connection/lnd_rpc/lnd_rpc.dart' as lngrpc;
import '../../../common/models/models.dart';
import '../../../pedantic.dart';

class ListTxRepository {
  bool _loaded = false;
  List<TxLightningInvoice> _invoices = [];
  List<TxLightningPayment> _payments = [];
  List<TxOnchain> _onchains = [];

  ResponseStream<lngrpc.Transaction> _onchainStream;
  ResponseStream<lngrpc.Invoice> _invoiceStream;

  final BehaviorSubject<Tx> _rawTxSubject = BehaviorSubject();
  Stream<Tx> get rawTxStream => _rawTxSubject.stream;
  int _rawTxListeners = 0;

  // As LND doesn't provide a way to receive updates to the Blockchain state
  // we have to poll for it.
  final _pollInterval = 60;
  Timer _timer;
  int _lastBlockHight = 0;
  bool _checkingBlockHeight = false;

  ListTxRepository() {
    _setupInvoiceSubscription();
    _setupTransactionSubscription();
    _setupTimer();

    rawTxStream.doOnListen(() => _rawTxListeners++);
    rawTxStream.doOnCancel(() => _rawTxListeners--);
  }

  void dispose() {
    if (_timer != null && _timer.isActive) _timer.cancel();
    _onchainStream?.cancel();
    _invoiceStream?.cancel();
    _rawTxSubject?.close();
  }

  FutureOr<List<TxLightningInvoice>> getInvoices({forceReload = false}) async {
    if (!_loaded || forceReload) await _loadTransactions(99999);
    return List.from(_invoices);
  }

  FutureOr<List<TxLightningPayment>> getPayments({forceReload = false}) async {
    if (!_loaded || forceReload) await _loadTransactions(99999);
    return List.from(_payments);
  }

  FutureOr<List<TxOnchain>> getOnchains({forceReload = false}) async {
    if (!_loaded || forceReload) await _loadTransactions(99999);
    return List.from(_onchains);
  }

  void _setupTimer() {
    if (_timer != null && _timer.isActive) {
      _timer.cancel();
    }

    _timer = Timer.periodic(Duration(seconds: _pollInterval), (timer) {
      if (_pollInterval == 0) {
        _timer.cancel();
        _timer = null;
      } else {
        _checkBlockHeight();
      }
    });
  }

  Future _checkBlockHeight() async {
    if (_checkingBlockHeight) return;
    _checkingBlockHeight = true;
    var client = LnConnectionDataProvider().lightningClient;
    var req = lngrpc.GetInfoRequest();
    var info = await client.getInfo(req);

    if (info.blockHeight != _lastBlockHight) {
      unawaited(_loadTransactions(99999));
      _lastBlockHight = info.blockHeight;
    }
    _checkingBlockHeight = false;
  }

  void _setupInvoiceSubscription() {
    final client = LnConnectionDataProvider().lightningClient;
    final req = lngrpc.InvoiceSubscription();
    _invoiceStream = client.subscribeInvoices(req);
    _invoiceStream.listen((onData) => _onNewInvoice(onData));
  }

  // Invoice update found
  void _onNewInvoice(lngrpc.Invoice data) {
    // check if it is an existing invoice
    var found = false;
    final newTx = Invoice.fromGRPC(data);
    List<Tx> l = _invoices.map((tx) {
      if (tx.invoice.hash == newTx.hash) {
        found = true;
        final lnInvoice = TxLightningInvoice(newTx);
        _rawTxListeners > 0 ?? _rawTxSubject.add(lnInvoice);
        return tx;
      } else {
        return tx;
      }
    }).toList();

    if (!found) {
      l.add(TxLightningInvoice(newTx));
    }

    _invoices = l;
  }

  // Listen to onchain transactions in our wallet
  void _setupTransactionSubscription() {
    final client = LnConnectionDataProvider().lightningClient;
    final req = lngrpc.GetTransactionsRequest();
    _onchainStream = client.subscribeTransactions(req);
    _onchainStream.listen((onData) => _onNewTransaction(onData));
  }

  // Transaction update found (new tx in mempool, ...
  void _onNewTransaction(lngrpc.Transaction data) {
    // check if it is an existing transaction
    var found = false;
    final newTx = OnchainTransaction.fromLND(data);
    List<Tx> l = _onchains.map((tx) {
      if (tx.tx.hash == newTx.hash) {
        // found the transaction, replace with new tx state
        found = true;
        final txOnchain = TxOnchain(newTx);
        _rawTxListeners > 0 ?? _rawTxSubject.add(txOnchain);
        return txOnchain;
      } else {
        return tx;
      }
    }).toList();

    if (!found) {
      // we didn't find the tx, add it to the store
      l.add(TxOnchain(newTx));
    }
    _onchains = l;
  }

  Future _loadTransactions([int numMaxInvoices = 99999]) async {
    var client = LnConnectionDataProvider().lightningClient;
    var invoicesRequest = lngrpc.ListInvoiceRequest();
    invoicesRequest.reversed = true;
    invoicesRequest.numMaxInvoices = Int64(numMaxInvoices);
    var paymentsRequest = lngrpc.ListPaymentsRequest();
    var txRequest = lngrpc.GetTransactionsRequest();

    var responseList;
    try {
      responseList = await Future.wait([
        client.listInvoices(invoicesRequest),
        client.listPayments(paymentsRequest),
        client.getTransactions(txRequest),
      ]);
    } on GrpcError catch (e) {
      print('gRPC error: $e');
      return;
    }

    lngrpc.ListInvoiceResponse invoiceResponse = responseList[0];
    lngrpc.ListPaymentsResponse paymentsResponse = responseList[1];
    lngrpc.TransactionDetails txResponse = responseList[2];

    try {
      _invoices = [];
      invoiceResponse.invoices.forEach((lngrpc.Invoice grpcInvoice) {
        var invoice = Invoice.fromGRPC(grpcInvoice);
        _invoices.add(TxLightningInvoice(invoice));
      });

      _payments = [];
      paymentsResponse.payments.forEach((lngrpc.Payment grpcPayment) {
        var payment = Payment.fromGRPC(grpcPayment);
        _payments.add(TxLightningPayment(payment));
      });

      _onchains = [];
      txResponse.transactions.forEach((lngrpc.Transaction onChainTx) {
        if (onChainTx.amount != 0) {
          var txm = OnchainTransaction.fromLND(onChainTx);
          _onchains.add(TxOnchain(txm));
        }
      });
    } catch (e) {
      print(e);
      print(e.stackTrace);
    }

    _loaded = true;
  }
}
