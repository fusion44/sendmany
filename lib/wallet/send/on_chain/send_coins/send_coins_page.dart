import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/wallet/balance/bloc/bloc.dart';
import 'package:torden/wallet/send/send_page.dart';
import 'package:url_launcher/url_launcher.dart';

import 'bloc/bloc.dart';
import 'send_coins_input_widget.dart';

class SendCoinsPage extends StatefulWidget {
  final QrInfo qrinfo;

  const SendCoinsPage({
    Key key,
    this.qrinfo,
  }) : super(key: key);
  @override
  _SendCoinsPageState createState() => _SendCoinsPageState();
}

class _SendCoinsPageState extends State<SendCoinsPage> {
  final SendCoinsBloc _sendCoinsBloc = SendCoinsBloc();
  bool _transactionSent = false;

  @override
  void dispose() {
    _sendCoinsBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  TODO: implement setting fee ui
    LnInfoBloc infoBloc = BlocProvider.of<LnInfoBloc>(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).pop(_transactionSent),
          ),
          title: TranslatedText("wallet.transactions.send_coins_page_title"),
        ),
        body: _buildInnerUI(infoBloc),
      ),
    );
  }

  Widget _buildInnerUI(LnInfoBloc infoBloc) {
    return BlocBuilder(
      bloc: infoBloc,
      builder: (BuildContext context, LnInfoState infoState) {
        return BlocListener(
          bloc: _sendCoinsBloc,
          listener: (context, state) {
            if (state is SendCoinsErrorState) {
              showSnackbar(context, state.error);
            }
          },
          child: BlocBuilder(
            bloc: _sendCoinsBloc,
            builder: (context, sendCoinsState) {
              if (sendCoinsState is InitialSendCoinsState ||
                  sendCoinsState is SendCoinsErrorState) {
                return SendCoinsInputWidget(
                  address: widget.qrinfo.address,
                  onSendCoinsButtonPressed: _submitTransaction,
                );
              } else if (sendCoinsState is SubmittingTransactionState) {
                return SendCoinsInputWidget(
                  address: widget.qrinfo.address,
                  onSendCoinsButtonPressed: _submitTransaction,
                  working: true,
                );
              } else if (sendCoinsState is TransactionSubmittedState) {
                return _buildTransactionSubmittedUI(
                  sendCoinsState.transactionId,
                  infoState is LnInfoStateLoadingFinished
                      ? () {
                          _launchURL(
                            infoState.infoResponse.chains[0].network,
                            sendCoinsState.transactionId,
                          );
                        }
                      : null,
                );
              } else {
                return Center(child: Text("Unknown state $sendCoinsState"));
              }
            },
          ),
        );
      },
    );
  }

  Widget _buildTransactionSubmittedUI(String txid, Function onPressed) {
    return TordenCard(
      tr(context, "wallet.transactions.submitted_to_mempool"),
      [
        Row(
          children: <Widget>[
            Flexible(
              child: DataItem(
                label: tr(
                  context,
                  "wallet.transactions.transaction_id",
                ),
                text: txid,
              ),
            ),
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                _shareTxid(txid);
              },
            ),
            IconButton(
              icon: Icon(MdiIcons.qrcode),
              onPressed: () {
                _showQRDialog(txid);
              },
            )
          ],
        ),
        _buildNextTxButton(),
        _buildViewTxOnlineButton(onPressed),
        _buildBackToHomeButton(),
      ],
      CrossAxisAlignment.stretch,
    );
  }

  RaisedButton _buildViewTxOnlineButton(Function onPressed) {
    return RaisedButton(
      color: tordenDarkGreen,
      child: TranslatedText(
        "wallet.transactions.view_on_blockstream_info",
      ),
      onPressed: onPressed,
    );
  }

  Widget _buildNextTxButton() {
    return RaisedButton.icon(
      icon: Icon(Icons.camera_alt),
      label: TranslatedText("wallet.transactions.next_transaction_button"),
      color: tordenConfirmedBalance,
      onPressed: () {
        Navigator.popUntil(
          context,
          ModalRoute.withName(SendPage.route_name),
        );
      },
    );
  }

  _buildBackToHomeButton() {
    return RaisedButton(
      child: TranslatedText("wallet.transactions.tx_sent_go_back_to_home"),
      onPressed: () {
        Navigator.popUntil(
          context,
          ModalRoute.withName("/home"),
        );
      },
    );
  }

  _submitTransaction(Int64 amount) {
    _sendCoinsBloc.dispatch(
      DoSendCoinsEvent(
        address: widget.qrinfo.address,
        amount: amount,
      ),
    );
  }

  void _shareTxid(String txid) {
    Share.text("", txid, "text/plain");
  }

  _launchURL(String network, String txid) async {
    String url = "https://blockstream.info/$network/tx/$txid";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _showQRDialog(String txid) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: TranslatedText("wallet.transactions.transaction_id"),
          content: SingleChildScrollView(
            child: Container(
              width: 256,
              height: 256,
              child: QrImage(
                data: txid,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: TranslatedText("wallet.transactions.close_txid_qr_dlg"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
