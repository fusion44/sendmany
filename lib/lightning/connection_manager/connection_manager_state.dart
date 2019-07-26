import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ConnectionManagerState extends Equatable {
  ConnectionManagerState([List props = const []]) : super(props);
}

class InitialConnectionManagerState extends ConnectionManagerState {}

class ConnectionNotEstablishedState extends ConnectionManagerState {}

class ConnectionEstablishedState extends ConnectionManagerState {
  ConnectionEstablishedState([List props = const []]) : super(props);
}
