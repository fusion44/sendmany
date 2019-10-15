import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sendmany/common/models/lnd_connection_data.dart';

@immutable
abstract class ConnectionManagerEvent extends Equatable {}

class AppStart extends ConnectionManagerEvent {
  final LndConnectionData data;

  AppStart(this.data);

  @override
  List<Object> get props => [data.name];
}

class SwitchConnectionEvent extends ConnectionManagerEvent {
  final LndConnectionData data;

  SwitchConnectionEvent(this.data);

  @override
  List<Object> get props => [data.name];
}

class ConnectionEstablishedEvent extends ConnectionManagerEvent {
  @override
  List<Object> get props => const [];
}
