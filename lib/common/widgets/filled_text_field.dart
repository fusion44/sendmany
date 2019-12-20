import 'package:flutter/material.dart';
import 'package:sendmany/common/constants.dart';

class FilledTextField extends StatefulWidget {
  final String text;
  final String textHint;
  final String Function(String) validator;
  final Function(String text) textChanged;
  final obscureText;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final int maxLines;
  final int minLines;
  final int maxLength;
  final bool maxLengthEnforced;
  final TextInputAction textInputAction;

  final String actionButtonText;
  final Function actionButtonClicked;

  FilledTextField({
    Key key,
    this.text = '',
    this.textHint,
    this.validator,
    this.textChanged,
    this.obscureText = false,
    this.textAlign = TextAlign.start,
    this.keyboardType = TextInputType.text,
    this.actionButtonText,
    this.actionButtonClicked,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.maxLengthEnforced = true,
    this.textInputAction,
  }) : super(key: key);

  @override
  _FilledTextFieldState createState() => _FilledTextFieldState();
}

class _FilledTextFieldState extends State<FilledTextField> {
  final TextEditingController controller = TextEditingController();
  bool validated = false;

  @override
  void initState() {
    if (widget.validator != null) {
      controller.addListener(() {
        widget.textChanged?.call(controller.text);
        var res = widget.validator(controller.text);
        if (res == null) {
          setState(() {
            validated = true;
          });
        } else {
          setState(() {
            validated = false;
          });
        }
      });
    } else {
      controller.addListener(() {
        widget.textChanged?.call(controller.text);
      });
    }
    controller.text = widget.text;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
            suffixIcon: _buildIcon(showButton),
          ),
          controller: controller,
          obscureText: widget.obscureText,
          textAlign: widget.textAlign,
          keyboardType: widget.keyboardType,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          maxLength: widget.maxLength,
          maxLengthEnforced: widget.maxLengthEnforced,
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
    if (widget.validator != null) {
      if (showButton) {
        return Padding(
          padding: const EdgeInsets.only(right: 80.0),
          child: Icon(
            Icons.check,
            color: validated ? sendManyPrimaryGreen300 : sendManyOrange200,
          ),
        );
      } else {
        return Icon(
          Icons.check,
          color: validated ? sendManyPrimaryGreen300 : sendManyOrange200,
        );
      }
    }
    return null;
  }
}
