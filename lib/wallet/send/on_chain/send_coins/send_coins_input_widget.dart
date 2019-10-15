import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';

final _formKey = GlobalKey<FormState>();

class SendCoinsInputWidget extends StatefulWidget {
  final Function onSendCoinsButtonPressed;
  final String address;
  final bool working;

  const SendCoinsInputWidget({
    Key key,
    @required this.address,
    @required this.onSendCoinsButtonPressed,
    this.working = false,
  }) : super(key: key);
  @override
  _SendCoinsInputWidgetState createState() => _SendCoinsInputWidgetState();
}

class _SendCoinsInputWidgetState extends State<SendCoinsInputWidget> {
  final _amountController = TextEditingController();
  bool _amountValid = false;
  Int64 _amount;

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                DataItem(
                  text: widget.address,
                  label: tr(context, "wallet.transactions.destination_address"),
                ),
                FilledTextField(
                  textAlign: TextAlign.center,
                  textHint: tr(context, "wallet.transactions.amount_in_sats"),
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: false,
                    signed: false,
                  ),
                  validator: (text) {
                    Int64 amount;
                    bool validated = false;

                    if (text.length < 1) validated = false;

                    try {
                      amount = Int64.parseInt(text);
                      validated = true;
                    } catch (e) {}

                    if (!validated) {
                      setState(() {
                        _amountValid = false;
                      });
                      return tr(
                        context,
                        "wallet.transactions.amount_invalid",
                      );
                    } else {
                      setState(() {
                        _amount = amount;
                        _amountValid = true;
                      });
                      return null;
                    }
                  },
                  actionButtonText: tr(
                    context,
                    "wallet.transactions.send_maximum_short",
                  ),
                  actionButtonClicked: () {
                    // TODO: implement setting send maximum satoshis.
                    // This requires knowing the fees beforehand.
                    showSnackbar(
                      context,
                      "TODO: implement setting set max sats",
                    );
                  },
                ),
              ],
            ),
          ),
        ),
        _buildSendButton()
      ],
    );
  }

  Widget _buildSendButton() {
    if (widget.working) {
      return RaisedButton(
        child: TranslatedText("wallet.transactions.working"),
        onPressed: null,
      );
    } else {
      print(_amountValid);
      return RaisedButton(
        child: TranslatedText("wallet.transactions.send"),
        onPressed: _amountValid
            ? () {
                if (_amountValid) {
                  widget.onSendCoinsButtonPressed(_amount);
                }
              }
            : null,
      );
    }
  }
}
