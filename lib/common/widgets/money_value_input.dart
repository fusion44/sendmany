import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class MoneyValueInput extends StatefulWidget {
  final Function amountChanged;

  const MoneyValueInput({Key key, this.amountChanged}) : super(key: key);

  @override
  _MoneyValueInputState createState() => _MoneyValueInputState();
}

class _MoneyValueInputState extends State<MoneyValueInput> {
  @override
  Widget build(BuildContext context) {
    return FilledTextField(
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
          widget.amountChanged(null);
          return tr(
            context,
            "wallet.transactions.amount_invalid",
          );
        } else {
          widget.amountChanged(amount);
          return null;
        }
      },
    );
  }
}
