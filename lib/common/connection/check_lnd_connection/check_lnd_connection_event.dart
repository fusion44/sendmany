import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/lnd_connection_data.dart';

@immutable
abstract class CheckLNDConnectionEvent extends Equatable {}

class DoCheckLNDConnectionEvent extends CheckLNDConnectionEvent {
  final LndConnectionData data;

  DoCheckLNDConnectionEvent({@required this.data});

  @override
  List<Object> get props => const [];
}
