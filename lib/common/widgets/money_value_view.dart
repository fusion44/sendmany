import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../preferences/bloc.dart';

class MoneyValueView extends StatelessWidget {
  final Int64 amount;
  final Int64 fee;
  final bool hero;
  final bool settled;
  final TextAlign textAlign;

  const MoneyValueView({
    Key key,
    this.amount,
    this.hero = false,
    this.settled = true,
    this.textAlign = TextAlign.start,
    this.fee,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = _buildSendManyTextThemeEczar(theme.textTheme);
    return BlocBuilder(
      cubit: BlocProvider.of<PreferencesBloc>(context),
      builder: (BuildContext context, PreferencesState state) {
        final numberFormat = NumberFormat.currency(
          locale: state.language,
          symbol: 'シ',
          decimalDigits: 0,
        );

        var style = hero ? textTheme.headline5 : textTheme.bodyText2;
        if (!settled) style = style.copyWith(color: Colors.grey);

        if (fee != null) {
          return SizedBox(
            width: 100,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    '${numberFormat.format(amount)}',
                    style: style,
                    textAlign: textAlign,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    numberFormat.format(fee),
                    style: textTheme.caption,
                    textAlign: textAlign,
                  ),
                )
              ],
            ),
          );
        }

        return Text(
          numberFormat.format(amount),
          style: style,
          textAlign: textAlign,
        );
      },
    );
  }

  TextTheme _buildSendManyTextThemeEczar(TextTheme base) {
    return base
        .copyWith(
          bodyText2: base.bodyText2.copyWith(fontSize: 16),
          headline5: base.headline5.copyWith(fontSize: 48),
        )
        .apply(fontFamily: 'Eczar');
  }
}
