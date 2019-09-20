import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/transaction.dart';

@immutable
abstract class SubscribeTransactionsEvent extends Equatable {
  SubscribeTransactionsEvent([List props = const <dynamic>[]]) : super(props);
}

class TransactionChangedEvent extends SubscribeTransactionsEvent {
  final TransactionModel tx;

  TransactionChangedEvent(this.tx) : super([tx]);
}
