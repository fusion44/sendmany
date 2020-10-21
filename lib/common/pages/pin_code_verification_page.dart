import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../preferences/bloc.dart';
import '../constants.dart';
import '../utils.dart';
import '../widgets/widgets.dart';

class PinCodeVerificationScreen extends StatefulWidget {
  final PreferencesBloc prefsBloc;

  const PinCodeVerificationScreen(this.prefsBloc, {Key key}) : super(key: key);

  @override
  _PinCodeVerificationScreenState createState() =>
      _PinCodeVerificationScreenState();
}

class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
  var onTapRecognizer;
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType> errorController;
  bool hasError = false;
  String _pin = '';
  String _userPin = '';
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();
  bool _loading = true;

  bool _verifyBtnEnabled = false;

  StreamSubscription<PreferencesState> prefSub;

  @override
  void initState() {
    super.initState();

    _updateState(widget.prefsBloc.state);
    prefSub = widget.prefsBloc.listen((state) {
      _updateState(state);
    });

    onTapRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pop(context);
      };
    errorController = StreamController<ErrorAnimationType>();
  }

  @override
  void dispose() {
    super.dispose();
    errorController.close();
    prefSub.cancel();
  }

  void _updateState(PreferencesState state) {
    if (widget.prefsBloc.state is PreferencesLoadedState) {
      setState(() {
        _userPin = widget.prefsBloc.state.pin;
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      key: scaffoldKey,
      body: GestureDetector(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height / 5.5,
                child: Image.asset('assets/images/logo.png'),
              ),
              _loading ? Text('loading') : Container(),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 30,
                  ),
                  child: PinCodeTextField(
                    autoFocus: true,
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    obscureText: true,
                    obscuringCharacter: '*',
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v.length < 3) {
                        return tr(context, 'auth.min_pin_length');
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.underline,
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: hasError
                          ? sendManyOrange300
                          : sendManyBackgroundAccent,
                    ),
                    cursorColor: Colors.deepOrange,
                    animationDuration: Duration(milliseconds: 300),
                    textStyle: TextStyle(fontSize: 20, height: 1.6),
                    backgroundColor: sendManyBackground,
                    enableActiveFill: false,
                    errorAnimationController: errorController,
                    controller: textEditingController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (value.length == 4) {
                        setState(() {
                          _pin = value;
                          _verifyBtnEnabled = true;
                        });
                      } else if (_verifyBtnEnabled && value.length < 4) {
                        _verifyBtnEnabled = false;
                      }
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  hasError ? tr(context, 'auth.min_pin_length') : '',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: RaisedButton(
                  onPressed: _verifyBtnEnabled
                      ? () {
                          formKey.currentState.validate();
                          // conditions for validating
                          if (_pin.length != 4 || _pin != _userPin) {
                            errorController.add(ErrorAnimationType.shake);
                            setState(() {
                              hasError = true;
                            });
                          } else {
                            setState(() {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                '/home',
                                (Route<dynamic> route) => false,
                              );
                            });
                          }
                        }
                      : null,
                  child: Center(
                    child: TranslatedText('alert_dialog.confirm'),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: TranslatedText('alert_dialog.clear'),
                    onPressed: () {
                      textEditingController.clear();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
