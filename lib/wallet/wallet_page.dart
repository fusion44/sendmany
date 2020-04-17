import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';
import 'package:sendmany/wallet/balance/balance_overview_widget.dart';

import 'balance/bloc/bloc.dart';
import 'balance/list_transactions/bloc.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
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
          var infoBloc = BlocProvider.of<LnInfoBloc>(context);
          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: state.transactions.length,
                  itemBuilder: (context, i) {
                    if (i == 0) {
                      return BlocProvider.value(
                        value: infoBloc,
                        child: BalanceOverviewWidget(),
                      );
                    }
                    return _buildListTile(state.transactions[i - 1]);
                  },
                ),
              )
            ],
          );
        } else {
          return Center(child: Text('Unknown state: $state'));
        }
      },
    );
  }

  Widget _buildListTile(Tx tx) {
    var theme = Theme.of(context);

    var memo = tx.memo;
    var settled = true;
    var icon;

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

    return ListTile(
      leading: icon,
      title: TimeAgoTextWidget(tx.date, allowFromNow: false),
      subtitle: Text(
        memo,
        style: textStyle,
      ),
      trailing: MoneyValueView(
        amount: tx.amountSat,
        textAlign: TextAlign.end,
        settled: settled,
        fee: tx.amountFees,
      ),
      dense: true,
    );
  }
}
