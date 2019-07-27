import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/money_value_view.dart';
import 'package:torden/common/widgets/torden_card.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/overview/bloc/ln_info_bloc.dart';

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
          return Text(tr(context, "network.loading"));
        } else if (state is LnInfoStateLoadingFinished) {
          Int64 total = state.channelBalance.balance +
              state.walletBalance.confirmedBalance +
              state.walletBalance.unconfirmedBalance;

          return TordenCard(
            tr(context, "wallet.balance"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(tr(context, "wallet.total")),
                ),
                MoneyValueView(amount: total, hero: true),
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
                  ],
                ),
              ],
            ),
          );
        }
        return Text("Unknown State? $state");
      },
    );
  }
}
