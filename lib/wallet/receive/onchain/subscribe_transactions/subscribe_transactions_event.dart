import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../common/models/models.dart';

@immutable
abstract class SubscribeTransactionsEvent extends Equatable {}

class TransactionChangedEvent extends SubscribeTransactionsEvent {
  final OnchainTransaction tx;

  TransactionChangedEvent(this.tx);

  @override
  List<Object> get props => [tx];
}
