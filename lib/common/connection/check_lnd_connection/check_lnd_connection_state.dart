import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';

@immutable
abstract class CheckLNDConnectionState extends Equatable {
  CheckLNDConnectionState([List props = const <dynamic>[]]) : super(props);
}

class InitialCheckLNDConnectionState extends CheckLNDConnectionState {}

class CheckingLNDConnectionState extends CheckLNDConnectionState {}

class CheckLNDConnectionSuccessState extends CheckLNDConnectionState {
  final GetInfoResponse info;

  CheckLNDConnectionSuccessState({
    this.info,
  });
}

class CheckLNDConnectionErrorState extends CheckLNDConnectionState {
  final String error;

  CheckLNDConnectionErrorState({
    this.error,
  });
}
