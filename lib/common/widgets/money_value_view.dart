import 'package:fixnum/fixnum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:sendmany/preferences/bloc.dart';

class MoneyValueView extends StatelessWidget {
  final Int64 amount;
  final bool hero;
  final bool settled;
  final TextAlign textAlign;

  const MoneyValueView({
    Key key,
    this.amount,
    this.hero = false,
    this.settled = true,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = _buildSendManyTextThemeEczar(theme.textTheme);
    return BlocBuilder(
      bloc: BlocProvider.of<PreferencesBloc>(context),
      builder: (BuildContext context, PreferencesState state) {
        final numberFormat = NumberFormat.currency(
          locale: state.language,
          symbol: 'シ',
          decimalDigits: 0,
        );

        var style = hero ? textTheme.headline5 : textTheme.bodyText2;
        if (!settled) style = style.copyWith(color: Colors.grey);

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
