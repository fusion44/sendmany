import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:torden/common/constants.dart';

import 'translated_text.dart';

class LoadingWidget extends StatelessWidget {
  final String text;
  final double height;

  const LoadingWidget(
    this.text, {
    Key key,
    this.height = 64.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Center(
      child: Column(
        children: <Widget>[
          Container(height: height),
          TranslatedText(
            text,
            style: theme.textTheme.title,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 64.0),
            child: SpinKitRipple(color: tordenBlue200, size: 100),
          ),
        ],
      ),
    );
  }
}
