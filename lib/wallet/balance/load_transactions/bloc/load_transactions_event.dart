import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class GetTransactionsEvent extends Equatable {
  GetTransactionsEvent([List props = const []]) : super(props);
}

class ChangePollTransactionsIntervalEvent extends GetTransactionsEvent {
  // 0 turns polling off
  final int seconds;

  ChangePollTransactionsIntervalEvent(this.seconds);
}

class LoadTransactionsEvent extends GetTransactionsEvent {}
