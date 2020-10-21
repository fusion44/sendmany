import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils.dart';
import 'custom_dialog.dart';
import 'themed_pin_code_text_field.dart';
import 'translated_text.dart';

class VerifyPinDialog extends StatefulWidget {
  final String pin;

  const VerifyPinDialog(this.pin, {Key key}) : super(key: key);

  @override
  _VerifyPinDialogState createState() => _VerifyPinDialogState();
}

class _VerifyPinDialogState extends State<VerifyPinDialog> {
  final _pin = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  StreamController<ErrorAnimationType> errorController;

  bool _entryCompleted = false;
  bool _pinValid = false;

  @override
  void initState() {
    super.initState();
    errorController = StreamController<ErrorAnimationType>();
  }

  @override
  void dispose() {
    super.dispose();
    errorController.close();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return CustomAlertDialog(
      content: Container(
        color: Theme.of(context).dialogBackgroundColor,
        width: MediaQuery.of(context).size.width / 1.3,
        height: MediaQuery.of(context).size.height / 3.2,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TranslatedText('auth.pin', style: theme.textTheme.caption),
              ThemedPinCodeTextField(
                onChanged: (value) {
                  if (value.length < 3 && _entryCompleted) {
                    setState(() {
                      _entryCompleted = false;
                    });
                  }
                },
                onCompleted: (value) {
                  setState(() {
                    _entryCompleted = true;
                  });
                },
                validator: (v) {
                  if (v.length < 3) {
                    return tr(context, 'auth.min_pin_length');
                  } else {
                    return null;
                  }
                },
                errorAnimationController: errorController,
                textController: _pin,
                hasError: !_pinValid,
              ),
              SizedBox(height: 16),
              RaisedButton(
                child: TranslatedText('auth.check'),
                onPressed: _entryCompleted
                    ? () {
                        if (_pin.text == widget.pin) {
                          Navigator.pop(context, true);
                        } else {
                          errorController.add(ErrorAnimationType.shake);
                          setState(() {
                            _pinValid = false;
                          });
                        }
                      }
                    : null,
              ),
              FlatButton(
                child: TranslatedText('alert_dialog.clear'),
                onPressed: () {
                  _pin.text = '';
                  _pinValid = false;
                  _entryCompleted = false;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
