import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/constants.dart';
import '../../../common/models/models.dart';
import 'list_transactions_event.dart';
import 'list_transactions_options.dart';
import 'list_transactions_repository.dart';
import 'list_transactions_state.dart';

// Event when a new message from the update subscription is received
class _SubscribeTransactionEvent extends ListTxEvent {
  final Tx tx;

  _SubscribeTransactionEvent(this.tx);

  @override
  List<Object> get props => [tx];
}

class ListTxBloc extends Bloc<ListTxEvent, ListTxState> {
  final ListTxRepository _repo;
  StreamSubscription<Tx> _sub;

  List<TxLightningInvoice> _invoices = [];
  List<TxLightningPayment> _payments = [];
  List<TxOnchain> _onchains = [];
  List<Tx> _combined = [];
  int numInvoices = -1;
  int numPayments = -1;
  int numOnchainTx = -1;

  ListTxOptions _options;

  ListTxBloc(this._repo) : super(InitialListTxState()) {
    _sub = _repo.rawTxStream
        .listen((event) => add(_SubscribeTransactionEvent(event)));
  }

  @override
  Future<void> close() {
    _sub?.cancel();
    return super.close();
  }

  @override
  Stream<ListTxState> mapEventToState(
    ListTxEvent event,
  ) async* {
    if (event is LoadTxEvent) {
      _options = event.options;

      if (state is LoadingTxFinishedState) {
        LoadingTxFinishedState tx = state;
        yield LoadingTxState(tx.transactions);
      } else {
        yield LoadingTxState([]);
      }
      try {
        _invoices = await _repo.getInvoices();
        _payments = await _repo.getPayments();
        _onchains = await _repo.getOnchains();

        _buildTxList();

        if (event.updateTxPrefData) {
          // save the last index - necessary to check for new
          // invoices in a background process
          var prefs = await SharedPreferences.getInstance();
          await prefs.setInt(prefLastNumInvoices, _invoices.length);
          await prefs.setInt(prefLastNumPayments, _payments.length);
          await prefs.setInt(prefLastNumOnchainTx, _onchains.length);
        }

        yield LoadingTxFinishedState(
          _combined,
          invoices: List.from(_invoices),
          payments: List.from(_payments),
          onchains: List.from(_onchains),
        );
      } catch (error) {
        yield LoadingTxErrorState(error);
      }
    } else if (event is _SubscribeTransactionEvent) {
      _onNewTransaction(event);
      yield LoadingTxFinishedState(
        _combined,
        invoices: List.from(_invoices),
        payments: List.from(_payments),
        onchains: List.from(_onchains),
      );
    }
  }

  void _buildTxList() {
    _combined = <Tx>[];

    if (_options.includeLightningInvoices) {
      _invoices.forEach((TxLightningInvoice invoice) {
        if (_options.includeUnsettledInvoices) {
          _combined.add(invoice);
        } else {
          if (invoice.invoice.state == InvoiceState.settled) {
            _combined.add(invoice);
          }
        }
      });
    }

    if (_options.includeLightningPayments) {
      _payments.forEach((TxLightningPayment payment) {
        if (_options.includeFailedPayments) {
          _combined.add(payment);
        } else {
          if (payment.payment.status == PaymentStatus.succeeded) {
            _combined.add(payment);
          }
        }
      });
    }

    if (_options.includeOnchainTx) {
      _onchains.forEach((TxOnchain onchainTx) {
        _combined.add(onchainTx);
      });
    }

    _combined.sort((Tx a, Tx b) {
      return b.date.compareTo(a.date);
    });
  }

  void _onNewTransaction(_SubscribeTransactionEvent event) {
    var found = false;
    final newTx = event.tx;

    if (newTx is TxOnchain) {
      _onchains = _onchains.map((element) {
        if (element.tx.hash == newTx.tx.hash) {
          found = true;
          return newTx;
        } else {
          return element;
        }
      }).toList();
      if (!found) {
        _onchains.add(newTx);
      }
    } else if (newTx is TxLightningInvoice) {
      _invoices = _invoices.map((element) {
        if (element.invoice.hash == newTx.invoice.hash) {
          found = true;
          return newTx;
        } else {
          return element;
        }
      }).toList();
      if (!found) {
        _invoices.add(newTx);
      }
    } else if (newTx is TxLightningPayment) {
      _payments = _payments.map((element) {
        if (element.payment.paymentHash == newTx.payment.paymentHash) {
          found = true;
          return newTx;
        } else {
          return element;
        }
      }).toList();
      if (!found) {
        _payments.add(newTx);
      }
    }

    _buildTxList();
    return;
  }
}
