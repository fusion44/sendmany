import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/channels/listchannels/bloc/bloc.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/charts/charts.dart';
import 'package:torden/common/widgets/money_value_view.dart';
import 'package:torden/common/widgets/torden_card.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/wallet/receive/receive_page.dart';
import 'package:torden/wallet/send/send_page.dart';

import 'bloc/bloc.dart';

class BalanceOverviewWidget extends StatefulWidget {
  @override
  _BalanceOverviewWidgetState createState() => _BalanceOverviewWidgetState();
}

class _BalanceOverviewWidgetState extends State<BalanceOverviewWidget> {
  LnInfoBloc _infoBloc;
  ListChannelsBloc _listChannelsBloc;

  @override
  initState() {
    _infoBloc = BlocProvider.of<LnInfoBloc>(context);
    _listChannelsBloc = BlocProvider.of<ListChannelsBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return BlocBuilder(
      bloc: _infoBloc,
      builder: (BuildContext context, LnInfoState state) {
        if (state is LnInfoStateLoading) {
          return TranslatedText("network.loading");
        } else if (state is LnInfoStateLoadingFinished) {
          Int64 total = state.channelBalance.balance +
              state.walletBalance.confirmedBalance +
              state.walletBalance.unconfirmedBalance;

          List<ChartSectionInput> i = [
            ChartSectionInput(state.walletBalance.confirmedBalance.toDouble(),
                tordenConfirmedBalance),
            ChartSectionInput(state.walletBalance.unconfirmedBalance.toDouble(),
                tordenUnconfirmedBalance),
            ChartSectionInput(
                state.channelBalance.balance.toDouble(), tordenChannelBalance),
          ];

          return TordenCard(
              tr(context, "wallet.balance"),
              [
                TranslatedText("wallet.total"),
                MoneyValueView(amount: total, hero: true),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: FlatLineChart(
                    values: i,
                    total: total.toDouble(),
                    strokeWidth: 3,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    BalanceDisplayListItem(
                      theme: theme,
                      title: tr(context, "wallet.onchain"),
                      subtitle: tr(context, "wallet.confirmed"),
                      amount: state.walletBalance.confirmedBalance,
                      color: tordenConfirmedBalance,
                    ),
                    Divider(),
                    BalanceDisplayListItem(
                      theme: theme,
                      title: tr(context, "wallet.onchain"),
                      subtitle: tr(context, "wallet.unconfirmed"),
                      amount: state.walletBalance.unconfirmedBalance,
                      color: tordenUnconfirmedBalance,
                    ),
                    Divider(),
                    BalanceDisplayListItem(
                      theme: theme,
                      title: tr(context, "wallet.channel"),
                      amount: state.channelBalance.balance,
                      color: tordenChannelBalance,
                    ),
                    Divider(),
                    Container(height: 16.0),
                    _buildSendReceiveButtons(),
                  ],
                ),
              ],
              CrossAxisAlignment.stretch);
        }
        return Text("Unknown State? $state");
      },
    );
  }

  _buildSendReceiveButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          child: RaisedButton.icon(
            onPressed: _navigateToReceivePage,
            icon: Icon(Icons.call_received),
            label: TranslatedText("wallet.receive"),
            color: tordenDarkGreen,
          ),
        ),
        Container(
          width: 150,
          child: RaisedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return BlocProvider.value(
                        value: _infoBloc,
                        child: SendPage(),
                      );
                    },
                    settings: RouteSettings(name: SendPage.route_name)),
              );
            },
            icon: Icon(Icons.send),
            label: TranslatedText("wallet.send"),
            color: tordenBlue700,
          ),
        )
      ],
    );
  }

  void _navigateToReceivePage() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<LnInfoBloc>.value(value: _infoBloc),
                BlocProvider<ListChannelsBloc>.value(
                  value: _listChannelsBloc,
                ),
              ],
              child: ReceivePage(),
            );
          },
          settings: RouteSettings(name: SendPage.route_name)),
    );
  }
}
