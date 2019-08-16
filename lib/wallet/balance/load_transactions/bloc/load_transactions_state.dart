import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

@immutable
abstract class LoadTransactionsState extends Equatable {
  final List<TransactionModel> transactions;
  LoadTransactionsState(
    this.transactions, [
    List props = const [],
  ]) : super([transactions]);
}

class InitialLoadTransactionsState extends LoadTransactionsState {
  InitialLoadTransactionsState() : super(null);
}

class LoadingTransactionsState extends LoadTransactionsState {
  LoadingTransactionsState(
    List<TransactionModel> transactions,
  ) : super(transactions);
}

class ReloadingTransactionsState extends LoadTransactionsState {
  ReloadingTransactionsState(
    List<TransactionModel> transactions,
  ) : super(transactions);
}

class LoadingTransactionsFinishedState extends LoadTransactionsState {
  LoadingTransactionsFinishedState(
    List<TransactionModel> transactions,
  ) : super(transactions);
}
