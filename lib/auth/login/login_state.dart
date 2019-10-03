import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable {}

class LoginSuccess extends LoginState {
  @override
  List<Object> get props => const [];

  @override
  String toString() => 'LoginInitial';
}

class LoginLoading extends LoginState {
  @override
  List<Object> get props => const [];

  @override
  String toString() => 'LoginLoading';
}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure({this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'LoginFailure { error: $error }';
}
