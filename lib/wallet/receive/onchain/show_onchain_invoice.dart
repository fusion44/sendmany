import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/models/models.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/wallet/receive/onchain/subscribe_transactions/bloc.dart';

class ShowOnchainInvoice extends StatefulWidget {
  final String address;
  final Int64 amount;

  const ShowOnchainInvoice({
    Key key,
    this.address,
    this.amount,
  }) : super(key: key);
  @override
  _ShowOnchainInvoiceState createState() => _ShowOnchainInvoiceState();
}

class _ShowOnchainInvoiceState extends State<ShowOnchainInvoice> {
  OnchainTransaction _tx;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return BlocListener<SubscribeTransactionsBloc, SubscribeTransactionsState>(
      listener: (context, state) {
        if (state is TransactionChangedState) {
          if (widget.address != null &&
              state.tx.destAddresses.contains(widget.address)) {
            setState(() {
              _tx = state.tx;
            });
          }
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(height: 24.0),
                  TranslatedText(
                    "wallet.receive_page.show_receive_invoice_onchain",
                    style: theme.textTheme.title,
                  ),
                  Container(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 6.0),
                        child: TranslatedText(
                          "wallet.transactions.invoice_for_x_sats",
                        ),
                      ),
                      MoneyValueView(amount: widget.amount)
                    ],
                  ),
                  QrImage(
                    data: widget.address,
                    version: QrVersions.auto,
                    size: MediaQuery.of(context).size.width * 0.7,
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                    child: Text(widget.address),
                  ),
                  _tx != null
                      ? TransactionHashDataItem(txhash: _tx.hash)
                      : Container(),
                  _tx != null
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: DataItemMoney(
                                amount: _tx.amount,
                                label: tr(context, "amount"),
                              ),
                            ),
                            Expanded(
                              child: DataItem(
                                text: _tx.numConfirmations.toString(),
                                label: tr(
                                  context,
                                  "wallet.transactions.confirmations",
                                ),
                              ),
                            ),
                          ],
                        )
                      : SpinKitRipple(
                          color: tordenBlue200,
                          size: 100,
                        ),
                  RaisedButton(
                    child: TranslatedText(
                      "wallet.invoices.paid_go_back_to_home",
                    ),
                    onPressed: () {
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
