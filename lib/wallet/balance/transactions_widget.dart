import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/common/models/models.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/wallet/balance/load_transactions/bloc/load_transactions_state.dart';

import 'load_transactions/bloc/load_transactions_bloc.dart';

const numTransactions = 6;

class TransactionsWidget extends StatefulWidget {
  @override
  _TransactionsWidgetState createState() => _TransactionsWidgetState();
}

class _TransactionsWidgetState extends State<TransactionsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<LoadTransactionsBloc>(context),
      condition: (oldState, newState) {
        return !(newState is ReloadingTransactionsState);
      },
      builder: (context, state) {
        if (state is InitialLoadTransactionsState ||
            state is LoadingTransactionsState) {
          return Center(child: TranslatedText("wallet.transactions.loading"));
        } else if (state is LoadingTransactionsFinishedState) {
          List widgets = state.transactions
              .where((tx) => tx.amount != 0)
              .take(numTransactions)
              .map((tx) => _buildTxnListItem(tx))
              .toList();

          for (int i = 1; i < widgets.length; i += 2) {
            widgets.insert(i, Divider());
          }
          return TordenCard(
            tr(context, "wallet.transactions.transactions"),
            widgets,
          );
        } else {
          return Center(child: Text("Unknown state: $state"));
        }
      },
    );
  }

  Widget _buildTxnListItem(TransactionModel txn) {
    ThemeData theme = Theme.of(context);
    Icon icon;
    if (txn.amount > 0) {
      icon = Icon(Icons.arrow_forward, color: Colors.greenAccent);
    } else {
      icon = Icon(Icons.arrow_back, color: Colors.redAccent);
    }

    var textStyle = theme.textTheme.caption;
    if (txn.numConfirmations == 0) {
      textStyle = theme.textTheme.caption.copyWith(
        color: Colors.deepOrangeAccent,
      );
    }

    return Row(
      children: <Widget>[
        icon,
        Container(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TimeAgoTextWidget(txn.timsStampDateTime, allowFromNow: false),
            Text(
              "${tr(context, "wallet.transactions.confirmations")}: ${txn.numConfirmations}",
              style: textStyle,
            )
          ],
        ),
        Expanded(child: Container()),
        MoneyValueView(amount: txn.amount)
      ],
    );
  }
}
