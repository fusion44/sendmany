import 'package:flutter/material.dart';
import 'package:sendmany/common/utils.dart';

class TranslatedText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextOverflow overflow;
  final bool softWrap;
  final TextAlign textAlign;

  const TranslatedText(
    this.text, {
    Key key,
    this.style,
    this.overflow,
    this.softWrap,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      tr(context, text),
      style: style,
      overflow: overflow,
      softWrap: softWrap,
      textAlign: textAlign,
    );
  }
}
