import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/transaction.dart';

@immutable
abstract class SubscribeTransactionsEvent extends Equatable {}

class TransactionChangedEvent extends SubscribeTransactionsEvent {
  final TransactionModel tx;

  TransactionChangedEvent(this.tx);

  @override
  List<Object> get props => [tx];
}
