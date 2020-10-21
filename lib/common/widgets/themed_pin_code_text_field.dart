import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ThemedPinCodeTextField extends StatelessWidget {
  final Function(String) onChanged;
  final Function(String) onCompleted;
  final Function(String) validator;
  final StreamController<ErrorAnimationType> errorAnimationController;
  final TextEditingController textController;
  final bool obscureText;
  final FocusNode focusNode;
  final bool hasError;

  const ThemedPinCodeTextField({
    Key key,
    @required this.onChanged,
    @required this.onCompleted,
    @required this.validator,
    @required this.textController,
    this.obscureText = true,
    this.focusNode,
    this.hasError = false,
    this.errorAnimationController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var onChanged;
    return PinCodeTextField(
      autoFocus: true,
      appContext: context,
      length: 4,
      obscureText: obscureText,
      obscuringCharacter: '*',
      validator: validator,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        fieldHeight: 60,
        fieldWidth: 50,
        activeColor: hasError ? Colors.red : null,
      ),
      animationType: AnimationType.fade,
      cursorColor: Colors.deepOrange,
      animationDuration: Duration(milliseconds: 300),
      textStyle: TextStyle(fontSize: 20, height: 1.6),
      backgroundColor: Theme.of(context).dialogBackgroundColor,
      enableActiveFill: false,
      errorAnimationController: errorAnimationController,
      controller: textController,
      keyboardType: TextInputType.number,
      onCompleted: onCompleted,
      onChanged: onChanged,
      focusNode: focusNode,
    );
  }
}
