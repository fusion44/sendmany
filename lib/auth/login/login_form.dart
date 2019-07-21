import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/auth/login/bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoginForm extends StatefulWidget {
  final LoginBloc loginBloc;

  LoginForm({
    Key key,
    @required this.loginBloc,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  LoginBloc get _loginBloc => widget.loginBloc;

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: widget.loginBloc,
      listener: (BuildContext context, LoginState loginState) {
        if (loginState is LoginFailure) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text('${loginState.error}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: _buildUi(),
    );
  }

  _buildUi() {
    return BlocBuilder<LoginEvent, LoginState>(
      bloc: _loginBloc,
      builder: (
        BuildContext context,
        LoginState loginState,
      ) {
        bool working = loginState is LoginLoading;

        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: working
              ? Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SpinKitWave(
                    size: 28,
                    color: Colors.greenAccent,
                  ),
                )
              : RaisedButton(
                  onPressed: true ? _onLoginButtonPressed : null,
                  child: Text("Check"),
                ),
        );
      },
    );
  }

  _onLoginButtonPressed() {
    FocusScope.of(context).requestFocus(new FocusNode());
    _loginBloc.dispatch(
      LoginButtonPressed(pin: [1, 2, 3, 4]),
    );
  }
}
