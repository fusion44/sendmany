import 'package:flutter/material.dart';

import '../utils.dart';
import 'custom_dialog.dart';
import 'themed_pin_code_text_field.dart';
import 'translated_text.dart';

class SetPinDialog extends StatefulWidget {
  @override
  _SetPinDialogState createState() => _SetPinDialogState();
}

class _SetPinDialogState extends State<SetPinDialog> {
  final _ctrlPin1 = TextEditingController();
  final _ctrlPin2 = TextEditingController();
  final _focusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();

  bool _entriesCompleted = false;
  bool _pinValid = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return CustomAlertDialog(
      content: Container(
        color: Theme.of(context).dialogBackgroundColor,
        width: MediaQuery.of(context).size.width / 1.3,
        height: MediaQuery.of(context).size.height / 2,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TranslatedText('auth.pin', style: theme.textTheme.caption),
              ThemedPinCodeTextField(
                onChanged: (value) {},
                onCompleted: (value) {
                  FocusScope.of(context).requestFocus(_focusNode);
                },
                validator: (v) {
                  if (v.length < 3) {
                    return tr(context, 'auth.min_pin_length');
                  } else {
                    return null;
                  }
                },
                textController: _ctrlPin1,
                hasError: !_pinValid,
              ),
              SizedBox(height: 16),
              TranslatedText('auth.verify_pin', style: theme.textTheme.caption),
              ThemedPinCodeTextField(
                onChanged: (value) {},
                onCompleted: (value) {
                  var pin1 = _ctrlPin1.text;
                  var pin2 = _ctrlPin2.text;
                  _entriesCompleted = true;
                  if (pin1.length == 4 && pin1 == pin2) {
                    _pinValid = true;
                  } else {
                    _pinValid = false;
                  }
                  _formKey.currentState.validate();
                  setState(() {});
                },
                validator: (v) {
                  if (_entriesCompleted && !_pinValid) {
                    return tr(context, 'auth.entry_mismatch');
                  }
                  if (v.length < 3) {
                    return tr(context, 'auth.min_pin_length');
                  } else {
                    return null;
                  }
                },
                textController: _ctrlPin2,
                focusNode: _focusNode,
                hasError: !_pinValid,
              ),
              RaisedButton(
                child: TranslatedText('alert_dialog.confirm'),
                onPressed: _pinValid
                    ? () {
                        Navigator.pop(context, _ctrlPin1.text);
                      }
                    : null,
              ),
              FlatButton(
                child: TranslatedText('alert_dialog.clear'),
                onPressed: () {
                  _ctrlPin1.text = '';
                  _ctrlPin2.text = '';
                  _pinValid = false;
                  _entriesCompleted = false;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
