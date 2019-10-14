import 'package:meta/meta.dart';

@immutable
abstract class ConnectionManagerState {}

class InitialConnectionManagerState extends ConnectionManagerState {}

class ConnectionNotEstablishedState extends ConnectionManagerState {}

class ConnectionEstablishedState extends ConnectionManagerState {}

class ChangingConnectionState extends ConnectionManagerState {}
