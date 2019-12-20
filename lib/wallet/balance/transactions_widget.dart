import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';

import 'list_transactions/bloc.dart';

const numPayments = 12;

class TransactionsWidget extends StatefulWidget {
  @override
  _TransactionsWidgetState createState() => _TransactionsWidgetState();
}

class _TransactionsWidgetState extends State<TransactionsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<ListTxBloc>(context),
      condition: (oldState, newState) {
        return !(newState is ReloadingTxState);
      },
      builder: (context, state) {
        if (state is InitialListTxState || state is LoadingTxState) {
          return Center(child: TranslatedText('network.loading'));
        } else if (state is LoadingTxFinishedState) {
          List widgets = state.transactions
              .take(numPayments)
              .map((tx) => _buildTxListItem(tx))
              .toList();

          for (var i = 1; i < widgets.length; i += 2) {
            widgets.insert(i, Divider());
          }
          return SendManyCard(
            tr(context, 'wallet.transactions.transactions'),
            widgets,
          );
        } else {
          return Center(child: Text('Unknown state: $state'));
        }
      },
    );
  }

  Widget _buildTxListItem(Tx tx) {
    var theme = Theme.of(context);

    var memo = tx.memo;
    var settled = true;
    Icon icon;

    var textStyle = theme.textTheme.caption;
    if (tx is TxLightningInvoice) {
      if (tx.invoice.state == InvoiceState.settled) {
        icon = Icon(Icons.arrow_forward, color: Colors.greenAccent);
      } else {
        icon = Icon(Icons.arrow_forward, color: Colors.grey);
        settled = false;
      }
    } else if (tx is TxLightningPayment) {
      icon = Icon(Icons.arrow_back, color: Colors.redAccent);
      if (tx.payment.status != PaymentStatus.succeeded) settled = false;
    } else if (tx is TxOnchain) {
      if (tx.tx.numConfirmations == 0) settled = false;
      if (tx.tx.amount > 0) {
        icon = Icon(
          Icons.arrow_forward,
          color: settled ? Colors.greenAccent : Colors.grey,
        );
      } else {
        icon = Icon(
          Icons.arrow_back,
          color: settled ? Colors.redAccent : Colors.grey,
        );
      }
      if (!settled) {
        textStyle = theme.textTheme.caption.copyWith(
          color: Colors.deepOrangeAccent,
        );
      }
      memo =
          '${tr(context, 'wallet.transactions.confirmations')}: ${tx.tx.numConfirmations}';
    }

    return Row(
      children: <Widget>[
        icon,
        Container(width: 8.0),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TimeAgoTextWidget(tx.date, allowFromNow: false),
              Text(
                memo,
                style: textStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
        Expanded(
          child: MoneyValueView(
            amount: tx.amountSat,
            textAlign: TextAlign.end,
            settled: settled,
          ),
        )
      ],
    );
  }
}
