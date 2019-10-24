import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendmany/channels/listchannels/bloc/bloc.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/widgets/charts/charts.dart';
import 'package:sendmany/common/widgets/money_value_view.dart';
import 'package:sendmany/common/widgets/widgets.dart';
import 'package:sendmany/wallet/receive/receive_page.dart';
import 'package:sendmany/wallet/send/send_page.dart';

import 'bloc/bloc.dart';

class BalanceOverviewWidget extends StatefulWidget {
  @override
  _BalanceOverviewWidgetState createState() => _BalanceOverviewWidgetState();
}

class _BalanceOverviewWidgetState extends State<BalanceOverviewWidget> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return BlocBuilder(
      bloc: BlocProvider.of<LnInfoBloc>(context),
      builder: (BuildContext context, LnInfoState state) {
        if (state is LnInfoStateLoading) {
          return TranslatedText("network.loading");
        } else if (state is LnInfoStateLoadingFinished) {
          Int64 total = state.channelBalance.balance +
              state.walletBalance.confirmedBalance +
              state.walletBalance.unconfirmedBalance;

          List<ChartSectionInput> i = [
            ChartSectionInput(state.walletBalance.confirmedBalance.toDouble(),
                sendManyConfirmedBalance),
            ChartSectionInput(state.walletBalance.unconfirmedBalance.toDouble(),
                sendManyUnconfirmedBalance),
            ChartSectionInput(state.channelBalance.balance.toDouble(),
                sendManyChannelBalance),
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
                      color: sendManyConfirmedBalance,
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
                      color: sendManyUnconfirmedBalance,
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
                      color: sendManyChannelBalance,
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
            color: sendManyDarkGreen,
          ),
        ),
        Container(
          width: 150,
          child: RaisedButton.icon(
            onPressed: () {
              var infoBloc = BlocProvider.of<LnInfoBloc>(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) {
                      return BlocProvider.value(
                        value: infoBloc,
                        child: SendPage(),
                      );
                    },
                    settings: RouteSettings(name: SendPage.route_name)),
              );
            },
            icon: Icon(Icons.send),
            label: TranslatedText("wallet.send"),
            color: sendManyBlue700,
          ),
        )
      ],
    );
  }

  void _navigateToReceivePage() {
    var infoBloc = BlocProvider.of<LnInfoBloc>(context);
    var channelsBloc = BlocProvider.of<ListChannelsBloc>(context);
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return MultiBlocProvider(
              providers: [
                BlocProvider<LnInfoBloc>.value(
                  value: infoBloc,
                ),
                BlocProvider<ListChannelsBloc>.value(
                  value: channelsBloc,
                ),
              ],
              child: ReceivePage(),
            );
          },
          settings: RouteSettings(name: SendPage.route_name)),
    );
  }
}
