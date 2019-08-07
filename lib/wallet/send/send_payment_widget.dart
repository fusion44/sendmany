import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';

import 'lightning/decode_payreq/bloc/bloc.dart';
import 'lightning/send_payment/bloc/bloc.dart';

class SendPaymentWidget extends StatefulWidget {
  final Function showFAB;
  final bool showPasteView;

  const SendPaymentWidget({
    Key key,
    @required this.showFAB,
    @required this.showPasteView,
  }) : super(key: key);
  @override
  _SendPaymentWidgetState createState() => _SendPaymentWidgetState();
}

class _SendPaymentWidgetState extends State<SendPaymentWidget> {
  final DecodePayReqBloc _decodePayReqBloc = DecodePayReqBloc();
  final SendPaymentBloc _sendPaymentBloc = SendPaymentBloc();
  final _invoiceController = TextEditingController();
  bool paymentSent = false;
  PayReq inflightPayment;

  @override
  void dispose() {
    _decodePayReqBloc.dispose();
    _sendPaymentBloc.dispose();
    _invoiceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return paymentSent ? _buildAwaitResponseUI() : _buildScanAndSendUI();
  }

  _buildScanAndSendUI() {
    ThemeData theme = Theme.of(context);
    return BlocBuilder(
      bloc: _decodePayReqBloc,
      builder: (BuildContext context, DecodePayReqState state) {
        if (state is InitialDecodePayReqBlocState) {
          if (widget.showPasteView) {
            return Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    autovalidate: true,
                    child: TextFormField(
                      maxLines: 6,
                      autofocus: false,
                      controller: _invoiceController,
                      decoration: InputDecoration(
                        labelText:
                            tr(context, "wallet.invoices.paste_invoice_here"),
                      ),
                      validator: (text) {
                        String reqString = text;
                        if (text.contains(":")) reqString = text.split(":")[1];
                        if (reqString.startsWith("ln") &&
                            reqString.length > 25) {
                          return null;
                        }
                        return tr(context, "wallet.invoices.invoice_invalid");
                      },
                    ),
                  ),
                ),
                RaisedButton(
                  child: TranslatedText("wallet.invoices.check_invoice"),
                  onPressed: () {
                    String code = _invoiceController.value.text;
                    _decodePayReqBloc.dispatch(DecodePayReqEvent(code));
                  },
                )
              ],
            );
          } else {
            return QRScannerWidget(
              onStringFound: (String code) {
                widget.showFAB(false);
                _decodePayReqBloc.dispatch(DecodePayReqEvent(code));
              },
            );
          }
        } else if (state is DecodingPayReqState) {
          return LoadingWidget("wallet.invoices.decoding");
        } else if (state is DecodedPayReqState) {
          return _buildShowDecodedPayRequestUI(state, theme);
        } else if (state is DecodingPayReqErrorState) {
          return Column(
            children: <Widget>[
              Text("Error: ${state.message}"),
              _buildRetryButton()
            ],
          );
        } else {
          return Center(child: Text("Unknown State: $state"));
        }
      },
    );
  }

  _buildShowDecodedPayRequestUI(DecodedPayReqState state, ThemeData theme) {
    DateTime reqDate = DateTime.fromMillisecondsSinceEpoch(
      state.req.timestamp.toInt() * 1000,
    );
    DateTime expDate = reqDate.add(
      Duration(seconds: state.req.expiry.toInt()),
    );

    int diff = (DateTime.now().millisecondsSinceEpoch) -
        reqDate.millisecondsSinceEpoch;
    bool expired = diff > (state.req.expiry.toInt() * 1000);

    return SingleChildScrollView(
      child: TordenCard(
        tr(context, "wallet.invoices.header"),
        <Widget>[
          MoneyValueView(amount: state.req.numSatoshis, hero: true),
          Divider(),
          DataItem(
            text: state.req.description,
            label: tr(context, "wallet.invoices.description"),
          ),
          Divider(),
          DataItem(
            text: state.req.destination,
            label: tr(context, "wallet.invoices.destination"),
          ),
          Divider(),
          TimeAgoListItem(
            reqDate,
            tr(context, "wallet.invoices.creation_date"),
          ),
          Divider(),
          TimeAgoListItem(
            expDate,
            tr(context, "wallet.invoices.expiration_date"),
            color: expired ? Colors.redAccent : tordenBackground,
          ),
          expired
              ? Text(
                  tr(context, "wallet.invoices.is_expired"),
                  style:
                      theme.textTheme.body1.copyWith(color: Colors.redAccent),
                )
              : Container(),
          Divider(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: expired ? _buildRetryButton() : _buildSendButton(state),
            ),
          )
        ],
      ),
    );
  }

  RaisedButton _buildRetryButton() {
    return RaisedButton.icon(
      icon: Icon(Icons.sync),
      label: TranslatedText("wallet.invoices.try_another_invoice"),
      onPressed: () {
        _decodePayReqBloc.dispatch(ResetDecodePayReqEvent());
      },
    );
  }

  RaisedButton _buildSendButton(DecodedPayReqState state) {
    return RaisedButton.icon(
      icon: Icon(Icons.flash_on),
      label: TranslatedText("wallet.invoices.pay"),
      onPressed: () {
        _sendPaymentBloc.dispatch(SendPaymentViaInvoiceEvent(state.reqString));
        setState(() {
          paymentSent = true;
          inflightPayment = state.req;
        });
      },
    );
  }

  _buildAwaitResponseUI() {
    return BlocBuilder(
      bloc: _sendPaymentBloc,
      builder: (BuildContext context, SendPaymentState state) {
        if (state is SendPaymentResponseState) {
          return _buildPaymentSentWidget(state);
        } else {
          return Center(child: LoadingWidget("wallet.payments.paying"));
        }
      },
    );
  }

  TordenCard _buildPaymentSentWidget(SendPaymentResponseState state) {
    return TordenCard(
      tr(context, "wallet.payments.paid"),
      <Widget>[
        MoneyValueView(
          amount: state.response.paymentRoute.totalAmtMsat ~/ 1000,
          hero: true,
        ),
        Divider(),
        Row(
          children: <Widget>[
            Expanded(
              child: DataItem(
                text: state.response.paymentRoute.hops.length.toString(),
                label: tr(context, "wallet.payments.num_hops"),
              ),
            ),
            Expanded(
              child: DataItemMoney(
                amount: (state.response.paymentRoute.totalFeesMsat ~/ 1000),
                label: tr(context, "wallet.payments.amnt_total_fees"),
              ),
            ),
          ],
        ),
        Divider(),
        DataItem(
          text: inflightPayment.description,
          label: tr(context, "wallet.invoices.description"),
        ),
        DataItem(
          text: inflightPayment.destination,
          label: tr(context, "wallet.invoices.destination"),
        ),
      ],
    );
  }
}
