import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../common/models/models.dart';

@immutable
abstract class SubscribeTransactionsState extends Equatable {}

class InitialSubscribeTransactionsState extends SubscribeTransactionsState {
  @override
  List<Object> get props => const [];
}

class TransactionChangedState extends SubscribeTransactionsState {
  final OnchainTransaction tx;

  TransactionChangedState(this.tx);

  @override
  List<Object> get props => [tx];
}
