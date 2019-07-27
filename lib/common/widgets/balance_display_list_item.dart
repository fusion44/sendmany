import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/widgets/widgets.dart';

class BalanceDisplayListItem extends StatelessWidget {
  final ThemeData theme;
  final String title;
  final String subtitle;
  final Int64 amount;
  final Color color;

  const BalanceDisplayListItem({
    Key key,
    @required this.theme,
    @required this.title,
    this.subtitle = "",
    @required this.amount,
    this.color = tordenBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
                title,
                style: theme.textTheme.subhead,
              ),
              subtitle != ""
                  ? Text(
                      subtitle,
                      style: theme.textTheme.caption,
                    )
                  : Container(),
            ],
          ),
        ),
        Expanded(
          child: MoneyValueView(
            amount: amount,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
