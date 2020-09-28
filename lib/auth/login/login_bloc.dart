import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:sendmany/auth/login/login_event.dart';
import 'package:sendmany/auth/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginSuccess());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();

      try {
        // TODO: Implement PIN check
        yield LoginSuccess();
      } catch (error) {
        yield LoginFailure(error: error.toString());
      }
    }
  }
}
