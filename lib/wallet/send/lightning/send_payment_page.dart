import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/connection/lnd_rpc/lnd_rpc.dart' as lnrpc;
import '../../../common/constants.dart';
import '../../../common/utils.dart';
import '../../../common/widgets/widgets.dart';
import 'decode_payreq/bloc/bloc.dart';
import 'send_payment/bloc/bloc.dart';

class SendPaymentPage extends StatefulWidget {
  final QrInfo qrinfo;

  const SendPaymentPage({Key key, @required this.qrinfo}) : super(key: key);
  @override
  _SendPaymentPageState createState() => _SendPaymentPageState();
}

class _SendPaymentPageState extends State<SendPaymentPage> {
  final DecodePayReqBloc _decodePayReqBloc = DecodePayReqBloc();
  final SendPaymentBloc _sendPaymentBloc = SendPaymentBloc();
  final _invoiceController = TextEditingController();
  bool _paymentSent = false;
  lnrpc.PayReq _inflightPayment;

  @override
  void initState() {
    _decodePayReqBloc.add(DecodePayReqEvent(widget.qrinfo.address));
    super.initState();
  }

  @override
  void dispose() {
    _decodePayReqBloc.close();
    _sendPaymentBloc.close();
    _invoiceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(_paymentSent),
          ),
        ),
        body: _paymentSent ? _buildAwaitResponseUI() : _buildScanAndSendUI(),
      ),
    );
  }

  Widget _buildScanAndSendUI() {
    var theme = Theme.of(context);
    return BlocBuilder(
      cubit: _decodePayReqBloc,
      builder: (BuildContext context, DecodePayReqState state) {
        if (state is InitialDecodePayReqBlocState) {
          return Text('Initial');
        } else if (state is DecodingPayReqState) {
          return LoadingWidget('wallet.invoices.decoding');
        } else if (state is DecodedPayReqState) {
          return _buildShowDecodedPayRequestUI(state, theme);
        } else if (state is DecodingPayReqErrorState) {
          return Column(
            children: <Widget>[
              Text('Error: ${state.message}'),
              _buildRetryButton()
            ],
          );
        } else {
          return Center(child: Text('Unknown State: $state'));
        }
      },
    );
  }

  Widget _buildShowDecodedPayRequestUI(
      DecodedPayReqState state, ThemeData theme) {
    var reqDate = DateTime.fromMillisecondsSinceEpoch(
      state.req.timestamp.toInt() * 1000,
    );
    var expDate = reqDate.add(
      Duration(seconds: state.req.expiry.toInt()),
    );

    var diff = (DateTime.now().millisecondsSinceEpoch) -
        reqDate.millisecondsSinceEpoch;
    var expired = diff > (state.req.expiry.toInt() * 1000);

    return SingleChildScrollView(
      child: SendManyCard(
        tr(context, 'wallet.invoices.header'),
        <Widget>[
          MoneyValueView(amount: state.req.numSatoshis, hero: true),
          Divider(),
          DataItem(
            text: state.req.description,
            label: tr(context, 'wallet.invoices.description'),
          ),
          Divider(),
          DataItem(
            text: state.req.destination,
            label: tr(context, 'wallet.invoices.destination'),
          ),
          Divider(),
          TimeAgoListItem(
            reqDate,
            tr(context, 'wallet.invoices.creation_date'),
          ),
          Divider(),
          TimeAgoListItem(
            expDate,
            tr(context, 'wallet.invoices.expiration_date'),
            color: expired ? Colors.redAccent : sendManyBackground,
          ),
          expired
              ? Text(
                  tr(context, 'wallet.invoices.is_expired'),
                  style: theme.textTheme.bodyText2.copyWith(
                    color: Colors.redAccent,
                  ),
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

  ElevatedButton _buildRetryButton() {
    return ElevatedButton.icon(
      icon: Icon(Icons.sync),
      label: TranslatedText('wallet.invoices.try_another_invoice'),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  ElevatedButton _buildSendButton(DecodedPayReqState state) {
    return ElevatedButton.icon(
      icon: Icon(Icons.flash_on),
      label: TranslatedText('wallet.invoices.pay'),
      onPressed: () {
        _sendPaymentBloc.add(SendPaymentViaInvoiceEvent(state.reqString));
        setState(() {
          _paymentSent = true;
          _inflightPayment = state.req;
        });
      },
    );
  }

  Widget _buildAwaitResponseUI() {
    return BlocBuilder(
      cubit: _sendPaymentBloc,
      builder: (BuildContext context, SendPaymentState state) {
        if (state is SendPaymentResponseState) {
          return _buildPaymentSentWidget(state);
        } else {
          return Center(child: LoadingWidget('wallet.payments.paying'));
        }
      },
    );
  }

  Widget _buildPaymentSentWidget(SendPaymentResponseState state) {
    return SendManyCard(
      tr(context, 'wallet.invoices.invoice_paid'),
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
                label: tr(context, 'wallet.payments.num_hops'),
              ),
            ),
            Expanded(
              child: DataItemMoney(
                amount: (state.response.paymentRoute.totalFeesMsat ~/ 1000),
                label: tr(context, 'wallet.payments.amnt_total_fees'),
              ),
            ),
          ],
        ),
        Divider(),
        DataItem(
          text: _inflightPayment.description,
          label: tr(context, 'wallet.invoices.description'),
        ),
        DataItem(
          text: _inflightPayment.destination,
          label: tr(context, 'wallet.invoices.destination'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _navigateHome();
              },
              child: TranslatedText('wallet.invoices.paid_go_back_to_home'),
            ),
            Container(width: 8.0),
            ElevatedButton(
              onPressed: () {
                // we've been launched from an URL
                // the navigator won't be able to pop
                // ==> go directly to the home screen
                if (Navigator.canPop(context)) {
                  Navigator.pop(context, true);
                } else {
                  _navigateHome();
                }
              },
              style: ElevatedButton.styleFrom(primary: sendManyPrimaryGreen700),
              child: TranslatedText('wallet.invoices.pay_another'),
            ),
          ],
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }

  void _navigateHome() {
    Navigator.popUntil(
      context,
      ModalRoute.withName('/home'),
    );
  }
}
