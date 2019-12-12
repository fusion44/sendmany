import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendmany/auth/login/bloc.dart';
import 'package:sendmany/auth/login/login_form.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginBloc _loginBloc;

  @override
  void initState() {
    _loginBloc = LoginBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('loginPage build');
    return BlocListener(
      bloc: _loginBloc,
      listener: (BuildContext context, LoginState state) {
        if (state is LoginSuccess) {
          Navigator.pushReplacementNamed(context, '/home');
        }
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: SendManyLogoHeroWidget(),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 16.0)),
                Container(
                  width: 300,
                  child: LoginForm(loginBloc: _loginBloc),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _loginBloc.close();
    super.dispose();
  }
}
