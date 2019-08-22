import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SendCoinsState extends Equatable {
  SendCoinsState([List props = const []]) : super(props);
}

class InitialSendCoinsState extends SendCoinsState {}

class SubmittingTransactionState extends SendCoinsState {}

class TransactionSubmittedState extends SendCoinsState {
  final String transactionId;

  TransactionSubmittedState(this.transactionId);
}

class SendCoinsErrorState extends SendCoinsState {
  final String error;
  final String address;
  final Int64 amount;

  SendCoinsErrorState(
    this.error, {
    this.address,
    this.amount,
  }) : super([error, address, amount]);
}
