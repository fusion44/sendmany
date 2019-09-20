import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

@immutable
abstract class SubscribeTransactionsState extends Equatable {
  SubscribeTransactionsState([List props = const <dynamic>[]]) : super(props);
}

class InitialSubscribeTransactionsState extends SubscribeTransactionsState {}

class TransactionChangedState extends SubscribeTransactionsState {
  final TransactionModel tx;

  TransactionChangedState(this.tx) : super([tx]);
}
