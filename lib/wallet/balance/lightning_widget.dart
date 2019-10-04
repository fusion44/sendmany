import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/common/models/models.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';

import 'list_lightning_transactions/bloc.dart';

const numPayments = 7;

class LightningWidget extends StatefulWidget {
  @override
  _LightningWidgetState createState() => _LightningWidgetState();
}

class _LightningWidgetState extends State<LightningWidget> {
  @override
  Widget build(BuildContext context) {
    ListLightningTxBloc bloc = ListLightningTxBloc();
    bloc.dispatch(ListLightningTxEvent());

    return BlocBuilder(
      bloc: bloc,
      condition: (oldState, newState) {
        return !(newState is ReloadingLightningTxState);
      },
      builder: (context, state) {
        if (state is InitialListLightningTxState ||
            state is LoadingLightningTxState) {
          return Center(child: TranslatedText("network.loading"));
        } else if (state is LoadingLightningTxFinishedState) {
          List widgets = state.transactions
              .take(numPayments)
              .map((tx) => _buildTxListItem(tx))
              .toList();

          for (int i = 1; i < widgets.length; i += 2) {
            widgets.insert(i, Divider());
          }
          return TordenCard(
            tr(context, "wallet.lightning_transactions"),
            widgets,
          );
        } else {
          return Center(child: Text("Unknown state: $state"));
        }
      },
    );
  }

  Widget _buildTxListItem(LightningTx tx) {
    ThemeData theme = Theme.of(context);

    bool settled = true;
    Icon icon;
    if (tx is LightningTxInvoice) {
      if (tx.invoice.state == InvoiceState.settled) {
        icon = Icon(Icons.arrow_forward, color: Colors.greenAccent);
      } else {
        icon = Icon(Icons.arrow_forward, color: Colors.grey);
        settled = false;
      }
    } else if (tx is LightningTxPayment) {
      icon = Icon(Icons.arrow_back, color: Colors.redAccent);
      if (tx.payment.status != PaymentStatus.succeeded) settled = false;
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
                tx.memo,
                style: theme.textTheme.caption,
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
