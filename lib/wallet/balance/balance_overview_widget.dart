import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/channels/listchannels/bloc/bloc.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/widgets/charts/charts.dart';
import 'package:torden/common/widgets/money_value_view.dart';
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

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TranslatedText("wallet.balance",
                    style: theme.textTheme.title),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TranslatedText("wallet.total"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: MoneyValueView(amount: total, hero: true),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  bottom: 8.0,
                ),
                child: FlatLineChart(
                  values: i,
                  total: total.toDouble(),
                  strokeWidth: 3,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: Container(
                      width: 4.0,
                      color: tordenConfirmedBalance,
                    ),
                    title: TranslatedText("wallet.onchain"),
                    subtitle: TranslatedText("wallet.confirmed"),
                    trailing: MoneyValueView(
                      amount: state.walletBalance.confirmedBalance,
                      textAlign: TextAlign.end,
                    ),
                    dense: false,
                  ),
                  ListTile(
                    leading: Container(
                      width: 4.0,
                      color: tordenUnconfirmedBalance,
                    ),
                    title: TranslatedText("wallet.onchain"),
                    subtitle: TranslatedText("wallet.unconfirmed"),
                    trailing: MoneyValueView(
                      amount: state.walletBalance.unconfirmedBalance,
                      textAlign: TextAlign.end,
                    ),
                    dense: false,
                  ),
                  ListTile(
                    leading: Container(
                      width: 4.0,
                      color: tordenChannelBalance,
                    ),
                    title: TranslatedText("wallet.channel"),
                    subtitle: Text("Total"),
                    trailing: MoneyValueView(
                      amount: state.channelBalance.balance,
                      textAlign: TextAlign.end,
                    ),
                    dense: false,
                  ),
                  Container(height: 16.0),
                  _buildSendReceiveButtons(),
                ],
              ),
            ],
          );
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
