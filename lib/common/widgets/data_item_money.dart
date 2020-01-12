import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/widgets/money_value_view.dart';

class DataItemMoney extends StatelessWidget {
  final Int64 amount;
  final String label;
  final Color color;

  const DataItemMoney({
    Key key,
    @required this.amount,
    @required this.label,
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
        Positioned(top: 2.0, left: 8.0, child: MoneyValueView(amount: amount)),
        Positioned(
          left: 8.0,
          bottom: 7.0,
          child: Text(
            label,
            style: theme.textTheme.caption,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
          ),
        )
      ],
    );
  }
}
