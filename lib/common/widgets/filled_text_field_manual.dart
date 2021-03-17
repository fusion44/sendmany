import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

class FilledTextFieldManual extends StatefulWidget {
  final TextEditingController controller;
  final String textHint;
  final bool valid;
  final obscureText;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final int maxLines;
  final int minLines;
  final int maxLength;
  final MaxLengthEnforcement maxLengthEnforcement;
  final TextInputAction textInputAction;
  final String actionButtonText;
  final Function actionButtonClicked;

  FilledTextFieldManual({
    Key key,
    @required this.controller,
    this.textHint,
    this.valid,
    this.obscureText = false,
    this.textAlign = TextAlign.start,
    this.keyboardType = TextInputType.text,
    this.actionButtonText,
    this.actionButtonClicked,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.maxLengthEnforcement = MaxLengthEnforcement.enforced,
    this.textInputAction,
  }) : super(key: key);

  @override
  _FilledTextFieldManualState createState() => _FilledTextFieldManualState();
}

class _FilledTextFieldManualState extends State<FilledTextFieldManual> {
  bool validated = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: sendManyBackgroundAccent,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: _buildTextFormField(),
      ),
    );
  }

  Widget _buildTextFormField() {
    var showButton = false;
    var height = 48.0;

    if (widget.actionButtonClicked != null) {
      showButton = true;
    }

    return Stack(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: widget.textHint,
            suffixIcon: widget.valid == null ? null : _buildIcon(showButton),
          ),
          controller: widget.controller,
          obscureText: widget.obscureText,
          textAlign: widget.textAlign,
          keyboardType: widget.keyboardType,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          maxLength: widget.maxLength,
          maxLengthEnforcement: widget.maxLengthEnforcement,
          textInputAction: widget.textInputAction,
        ),
        showButton ? Container(height: height) : Container(),
        showButton
            ? Positioned(
                height: height,
                width: 80.0,
                right: 0.0,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: widget.actionButtonClicked,
                    child: Container(
                      height: height,
                      child: Center(
                        child: Text(widget.actionButtonText.toUpperCase()),
                      ),
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }

  Widget _buildIcon(bool showButton) {
    if (showButton) {
      return Padding(
        padding: const EdgeInsets.only(right: 80.0),
        child: Icon(
          Icons.check,
          color: widget.valid ? sendManyPrimaryGreen300 : sendManyOrange200,
        ),
      );
    } else {
      return Icon(
        Icons.check,
        color: widget.valid ? sendManyPrimaryGreen300 : sendManyOrange200,
      );
    }
  }
}
