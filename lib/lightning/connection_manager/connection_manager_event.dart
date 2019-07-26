import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ConnectionManagerEvent extends Equatable {
  ConnectionManagerEvent([List props = const []]) : super(props);
}

class AppStart extends ConnectionManagerEvent {}

class ConnectionEstablishedEvent extends ConnectionManagerEvent {}
