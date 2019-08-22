import 'package:flutter/material.dart';
import 'package:torden/common/constants.dart';

class FilledTextField extends StatefulWidget {
  final String textHint;
  final String Function(String) validator;
  final Function(String text) textChanged;
  final obscureText;
  final TextAlign textAlign;
  final TextInputType keyboardType;

  final String actionButtonText;
  final Function actionButtonClicked;
  FilledTextField({
    Key key,
    this.textHint,
    this.validator,
    this.textChanged,
    this.obscureText = false,
    this.textAlign = TextAlign.start,
    this.keyboardType = TextInputType.text,
    this.actionButtonText,
    this.actionButtonClicked,
  }) : super(key: key);

  @override
  _FilledTextFieldState createState() => _FilledTextFieldState();
}

class _FilledTextFieldState extends State<FilledTextField> {
  final TextEditingController controller = TextEditingController();
  bool validated = false;
  @override
  initState() {
    controller.addListener(() {
      String res = widget.validator(controller.text);
      if (res == null) {
        setState(() {
          this.validated = true;
        });
      } else {
        setState(() {
          this.validated = false;
        });
      }
    });
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
      color: tordenBackgroundAccent,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: _buildTextFormField(),
      ),
    );
  }

  Widget _buildTextFormField() {
    bool showButton = false;
    double height = 48.0;

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
          color: validated ? tordenPrimaryGreen300 : tordenOrange200,
        ),
      );
    } else {
      return Icon(
        Icons.check,
        color: validated ? tordenPrimaryGreen300 : tordenOrange200,
      );
    }
  }
}
