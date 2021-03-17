import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../common/widgets/widgets.dart';
import 'bloc.dart';

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
      cubit: widget.loginBloc,
      listener: (BuildContext context, LoginState loginState) {
        if (loginState is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
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

  Widget _buildUi() {
    return BlocBuilder<LoginBloc, LoginState>(
      cubit: _loginBloc,
      builder: (
        BuildContext context,
        LoginState loginState,
      ) {
        var working = loginState is LoginLoading;

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
              : ElevatedButton(
                  onPressed: _onLoginButtonPressed,
                  child: TranslatedText('auth.check'),
                ),
        );
      },
    );
  }

  void _onLoginButtonPressed() {
    FocusScope.of(context).requestFocus(FocusNode());
    _loginBloc.add(
      LoginButtonPressed(pin: [1, 2, 3, 4]),
    );
  }
}
