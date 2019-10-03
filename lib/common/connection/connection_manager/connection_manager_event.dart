import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ConnectionManagerEvent extends Equatable {}

class AppStart extends ConnectionManagerEvent {
  @override
  List<Object> get props => const [];
}

class ConnectionEstablishedEvent extends ConnectionManagerEvent {
  @override
  List<Object> get props => const [];
}
