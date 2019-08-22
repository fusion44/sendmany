import 'package:flutter/material.dart';
import 'package:torden/common/constants.dart';

class DataItem extends StatelessWidget {
  final String text;
  final String label;
  final Color color;

  const DataItem({
    Key key,
    @required this.text,
    @required this.label,
    this.color = tordenBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Stack(
      children: <Widget>[
        Container(
          width: 3,
          height: 45,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style: theme.textTheme.subhead,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
              label != ""
                  ? Text(
                      label,
                      style: theme.textTheme.caption,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}
