import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sendmany/common/models/models.dart';

@immutable
abstract class ListTxState extends Equatable {}

class InitialListTxState extends ListTxState {
  @override
  List<Object> get props => const [];
}

class LoadingTxState extends ListTxState {
  final List<Tx> transactions;

  LoadingTxState(this.transactions);

  @override
  List<Object> get props => [transactions];
}

class ReloadingTxState extends ListTxState {
  final List<Tx> transactions;

  ReloadingTxState(this.transactions);

  @override
  List<Object> get props => [transactions];
}

class LoadingTxFinishedState extends ListTxState {
  final List<Tx> transactions;
  final List<TxLightningInvoice> invoices;
  final List<TxLightningPayment> payments;
  final List<TxOnchain> onchains;

  LoadingTxFinishedState(
    this.transactions, {
    @required this.invoices,
    @required this.payments,
    @required this.onchains,
  });

  @override
  List<Object> get props => [transactions];
}

class LoadingTxErrorState extends ListTxState {
  final String errorMessage;

  LoadingTxErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
