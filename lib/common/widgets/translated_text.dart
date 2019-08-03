import 'package:flutter/material.dart';
import 'package:torden/common/utils.dart';

class TranslatedText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextOverflow overflow;
  final bool softWrap;

  const TranslatedText(
    this.text, {
    Key key,
    this.style,
    this.overflow,
    this.softWrap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tr(context, text),
      style: style,
      overflow: overflow,
      softWrap: softWrap,
    );
  }
}
