import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SendCoinsState extends Equatable {
  SendCoinsState([List props = const []]) : super(props);
}

class InitialSendCoinsState extends SendCoinsState {}

class TransactionSubmittedState extends SendCoinsState {
  final String transactionId;

  TransactionSubmittedState(this.transactionId);
}
