import 'package:flutter/material.dart';

import '../constants.dart';
import 'time_ago_widget.dart';

class TimeAgoListItem extends StatelessWidget {
  final DateTime dateTime;
  final String label;
  final Color color;

  const TimeAgoListItem(
    this.dateTime,
    this.label, {
    Key key,
    this.color = sendManyBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

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
                style: theme.textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
              label != ''
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
