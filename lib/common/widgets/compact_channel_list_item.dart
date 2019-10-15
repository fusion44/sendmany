import 'package:flutter/material.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/widgets/charts/charts.dart';
import 'package:sendmany/common/widgets/money_value_view.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class CompactChannelListItem extends StatelessWidget {
  final Channel channel;

  const CompactChannelListItem({Key key, this.channel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    double total =
        channel.localBalance.toDouble() + channel.remoteBalance.toDouble();
    List<ChartSectionInput> sections = [
      ChartSectionInput(channel.localBalance.toDouble(), sendManyLocalBalance),
      ChartSectionInput(
        channel.remoteBalance.toDouble(),
        sendManyRemoteBalance,
      ),
    ];

    return Stack(
      children: <Widget>[
        Container(
          width: 3,
          height: 45,
          color: channel.active ? Colors.green : Colors.red,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 11.0),
              child: FlatLineChart(
                values: sections,
                total: total,
                strokeWidth: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.0, left: 11.0),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: TranslatedText(
                      "channels.id",
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
                  child: TranslatedText(
                    "channels.local",
                    style: theme.textTheme.caption,
                  ),
                ),
                MoneyValueView(
                  amount: channel.localBalance,
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: TranslatedText(
                    "channels.remote",
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
