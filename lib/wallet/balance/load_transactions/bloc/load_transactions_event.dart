import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class GetTransactionsEvent extends Equatable {}

class ChangePollTransactionsIntervalEvent extends GetTransactionsEvent {
  // 0 turns polling off
  final int seconds;

  ChangePollTransactionsIntervalEvent(this.seconds);

  @override
  List<Object> get props => [seconds];
}

class LoadTransactionsEvent extends GetTransactionsEvent {
  @override
  List<Object> get props => const [];
}
