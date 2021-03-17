import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';

import '../utils.dart';
import 'widgets.dart';

class MoneyValueInput extends StatefulWidget {
  /// Initial amount to display
  final Int64 amount;

  /// Callback when amount has changed
  final Function amountChanged;

  /// ID of the text to use
  final String textHintId;

  const MoneyValueInput({
    Key key,
    this.amount,
    this.amountChanged,
    this.textHintId = 'wallet.transactions.amount_in_sats',
  }) : super(key: key);

  @override
  _MoneyValueInputState createState() => _MoneyValueInputState();
}

class _MoneyValueInputState extends State<MoneyValueInput> {
  @override
  Widget build(BuildContext context) {
    return FilledTextField(
      text: widget.amount == null ? '' : widget.amount.toString(),
      textAlign: TextAlign.center,
      textHint: tr(context, widget.textHintId),
      keyboardType: TextInputType.numberWithOptions(
        decimal: false,
        signed: false,
      ),
      validator: (text) {
        Int64 amount;
        var validated = false;

        if (text.isEmpty) validated = false;

        try {
          amount = Int64.parseInt(text);
          validated = true;
        } catch (e) {
          print(e);
        }

        if (!validated) {
          widget.amountChanged(null);
          return tr(
            context,
            'wallet.transactions.amount_invalid',
          );
        } else {
          widget.amountChanged(amount);
          return null;
        }
      },
    );
  }
}
