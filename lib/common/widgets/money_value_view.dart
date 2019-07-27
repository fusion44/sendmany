import 'package:fixnum/fixnum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:torden/preferences/bloc.dart';

class MoneyValueView extends StatelessWidget {
  final Int64 amount;
  final bool hero;

  final TextAlign textAlign;

  const MoneyValueView({
    Key key,
    this.amount,
    this.hero = false,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = _buildTordenTextThemeEczar(theme.textTheme);
    return BlocBuilder(
      bloc: BlocProvider.of<PreferencesBloc>(context),
      builder: (BuildContext context, PreferencesState state) {
        final numberFormat = NumberFormat.currency(
          locale: state.language,
          symbol: "シ",
          decimalDigits: 0,
        );

        return Text(
          numberFormat.format(amount),
          style: hero ? textTheme.headline : textTheme.body1,
          textAlign: textAlign,
        );
      },
    );
  }

  TextTheme _buildTordenTextThemeEczar(TextTheme base) {
    return base
        .copyWith(
          body1: base.body1.copyWith(fontSize: 16),
          headline: base.headline.copyWith(fontSize: 48),
        )
        .apply(fontFamily: "Eczar");
  }
}
