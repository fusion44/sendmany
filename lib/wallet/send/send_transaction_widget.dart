import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';
import 'package:sendmany/wallet/balance/bloc/bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import 'on_chain/send_coins/bloc/bloc.dart';

class SendTransactionWidget extends StatefulWidget {
  final Function showFAB;
  final bool showPasteView;

  const SendTransactionWidget({
    Key key,
    @required this.showFAB,
    @required this.showPasteView,
  }) : super(key: key);
  @override
  _SendTransactionWidgetState createState() => _SendTransactionWidgetState();
}

class _SendTransactionWidgetState extends State<SendTransactionWidget> {
  final SendCoinsBloc _sendCoinsBloc = SendCoinsBloc();
  final _addressController = TextEditingController();
  final _amountController = TextEditingController();
  bool _showPasteView = false;

  @override
  void initState() {
    _showPasteView = widget.showPasteView;
    super.initState();
  }

  @override
  void dispose() {
    _sendCoinsBloc.close();
    _addressController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<LnInfoBloc>(context),
      builder: (BuildContext context, LnInfoState infoState) {
        return BlocBuilder(
          bloc: _sendCoinsBloc,
          builder: (context, sendCoinsState) {
            if (sendCoinsState is InitialSendCoinsState) {
              return _buildScanAndSendUI();
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
              return Center(child: Text('Unknown state $sendCoinsState'));
            }
          },
        );
      },
    );
  }

  Future<void> _showQRDialog(String txid) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: TranslatedText('wallet.transactions.transaction_id'),
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
              child: TranslatedText('wallet.transactions.close_txid_qr_dlg'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _launchURL(String network, String txid) async {
    var url = 'https://blockstream.info/$network/tx/$txid';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildScanAndSendUI() {
    return _showPasteView
        ? Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  autovalidate: true,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        maxLines: 1,
                        autofocus: false,
                        controller: _addressController,
                        decoration: InputDecoration(
                          labelText: tr(context,
                              'wallet.transactions.insert_address_here'),
                        ),
                        validator: (text) {
                          var reqString = text;
                          // TODO: Check validity of the address for current
                          // network (Mainnet, Testnet)
                          if (reqString != '' && reqString != null) {
                            return null;
                          }

                          return tr(
                              context, 'wallet.transactions.address_invalid');
                        },
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _amountController,
                      ),
                    ],
                  ),
                ),
              ),
              RaisedButton(
                child: TranslatedText('wallet.transactions.send'),
                onPressed: () {
                  var address = _addressController.value.text;
                  var amount = _amountController.value.text;
                  _sendCoinsBloc.add(
                    DoSendCoinsEvent(
                      address: address,
                      amount: Int64.parseInt(amount),
                    ),
                  );
                },
              )
            ],
          )
        : QRScannerWidget(
            onStringFound: (String code) {
              widget.showFAB(false);
              _addressController.text = code;
              setState(() {
                _showPasteView = true;
              });
            },
          );
  }

  Widget _buildTransactionSubmittedUI(String txid, Function onPressed) {
    return SendManyCard(
      tr(context, 'wallet.transactions.submitted_to_mempool'),
      [
        Row(
          children: <Widget>[
            Flexible(
              child: DataItem(
                label: tr(
                  context,
                  'wallet.transactions.transaction_id',
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
        _buildRetryButton(),
        RaisedButton(
          child: TranslatedText(
            'wallet.transactions.view_on_blockstream_info',
          ),
          onPressed: onPressed,
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.stretch,
    );
  }

  void _shareTxid(String txid) {
    Share.text('', txid, 'text/plain');
  }

  Widget _buildRetryButton() {
    return RaisedButton.icon(
      icon: Icon(Icons.camera_alt),
      label: TranslatedText('wallet.transactions.next_transaction_button'),
      color: sendManyConfirmedBalance,
      onPressed: () {
        _showPasteView = false;
        widget.showFAB(true);
        _amountController.text = '';
        _sendCoinsBloc.add(ResetSendCoinsEvent());
      },
    );
  }
}
