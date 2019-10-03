import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

@immutable
abstract class LoadTransactionsState extends Equatable {
  final List<TransactionModel> transactions;
  LoadTransactionsState(this.transactions);
}

class InitialLoadTransactionsState extends LoadTransactionsState {
  InitialLoadTransactionsState(List<TransactionModel> transactions)
      : super(transactions);

  @override
  List<Object> get props => [transactions];
}

class LoadingTransactionsState extends LoadTransactionsState {
  LoadingTransactionsState(
    List<TransactionModel> transactions,
  ) : super(transactions);

  @override
  List<Object> get props => [transactions];
}

class ReloadingTransactionsState extends LoadTransactionsState {
  ReloadingTransactionsState(
    List<TransactionModel> transactions,
  ) : super(transactions);

  @override
  List<Object> get props => [transactions];
}

class LoadingTransactionsFinishedState extends LoadTransactionsState {
  LoadingTransactionsFinishedState(
    List<TransactionModel> transactions,
  ) : super(transactions);

  @override
  List<Object> get props => [transactions];
}
