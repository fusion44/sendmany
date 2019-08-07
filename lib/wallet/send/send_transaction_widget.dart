import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';

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
    _sendCoinsBloc.dispose();
    _addressController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _sendCoinsBloc,
      builder: (context, state) {
        if (state is InitialSendCoinsState) {
          return _buildScanAndSendUI();
        } else if (state is TransactionSubmittedState) {
          return Center(child: Text(state.transactionId));
        } else {
          return Center(child: Text("Unknown state $state"));
        }
      },
    );
  }

  _buildScanAndSendUI() {
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
                              "wallet.transactions.insert_address_here"),
                        ),
                        validator: (text) {
                          String reqString = text;
                          // TODO: Check validiy of the adress for current
                          // network (Mainnet, Testnet)
                          if (reqString != "" && reqString != null) {
                            return null;
                          }

                          return tr(
                              context, "wallet.transactions.address_invalid");
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
                child: TranslatedText("wallet.transactions.send"),
                onPressed: () {
                  String address = _addressController.value.text;
                  String amount = _amountController.value.text;
                  _sendCoinsBloc.dispatch(
                    SendCoinsEvent(
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
}
