import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';

@immutable
abstract class CheckLNDConnectionState extends Equatable {}

class InitialCheckLNDConnectionState extends CheckLNDConnectionState {
  @override
  List<Object> get props => const [];
}

class CheckingLNDConnectionState extends CheckLNDConnectionState {
  @override
  List<Object> get props => const [];
}

class CheckLNDConnectionSuccessState extends CheckLNDConnectionState {
  final GetInfoResponse info;

  CheckLNDConnectionSuccessState({
    this.info,
  });

  @override
  List<Object> get props => [info];
}

class CheckLNDConnectionErrorState extends CheckLNDConnectionState {
  final String error;

  CheckLNDConnectionErrorState({
    this.error,
  });

  @override
  List<Object> get props => [error];
}
