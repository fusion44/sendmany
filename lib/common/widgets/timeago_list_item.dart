import 'package:flutter/material.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/widgets/time_ago_widget.dart';

class TimeAgoListItem extends StatelessWidget {
  final DateTime dateTime;
  final String label;
  final Color color;

  const TimeAgoListItem(
    this.dateTime,
    this.label, {
    Key key,
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
              TimeAgoTextWidget(
                dateTime,
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
