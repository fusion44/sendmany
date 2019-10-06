import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

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

  LoadingTxFinishedState(this.transactions);

  @override
  List<Object> get props => [transactions];
}

class LoadingTxErrorState extends ListTxState {
  final String errorMessage;

  LoadingTxErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
