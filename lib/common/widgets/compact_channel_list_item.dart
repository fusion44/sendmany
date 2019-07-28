import 'package:flutter/material.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/money_value_view.dart';
import 'package:torden/lightning/lnd/lnd_rpc.dart';

class CompactChannelListItem extends StatelessWidget {
  final Channel channel;

  const CompactChannelListItem({Key key, this.channel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        Container(
          width: 3,
          height: 45,
          color: channel.active ? Colors.green : Colors.red,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 3.0, left: 11.0),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      tr(context, "channels.id"),
                      style: theme.textTheme.caption,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(channel.chanId.toString()),
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 11.0, right: 6.0),
                  child: Text(
                    tr(context, "channels.local"),
                    style: theme.textTheme.caption,
                  ),
                ),
                MoneyValueView(
                  amount: channel.localBalance,
                ),
                Container(width: 8.0),
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: Text(
                    tr(context, "channels.remote"),
                    style: theme.textTheme.caption,
                  ),
                ),
                MoneyValueView(
                  amount: channel.remoteBalance,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
