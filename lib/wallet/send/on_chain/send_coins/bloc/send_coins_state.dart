import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SendCoinsState extends Equatable {}

class InitialSendCoinsState extends SendCoinsState {
  @override
  List<Object> get props => const [];
}

class SubmittingTransactionState extends SendCoinsState {
  @override
  List<Object> get props => const [];
}

class TransactionSubmittedState extends SendCoinsState {
  final String transactionId;

  TransactionSubmittedState(this.transactionId);

  @override
  List<Object> get props => [transactionId];
}

class SendCoinsErrorState extends SendCoinsState {
  final String error;
  final String address;
  final Int64 amount;

  SendCoinsErrorState(
    this.error, {
    this.address,
    this.amount,
  });

  @override
  List<Object> get props => [error, address, amount];
}
