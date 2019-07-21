import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:torden/preferences/bloc.dart';

class MoneyValueView extends StatelessWidget {
  final double amount;
  final bool hero;

  const MoneyValueView({
    Key key,
    this.amount = 0,
    this.hero = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = _buildTordenTextThemeEczar(theme.textTheme);
    return BlocBuilder(
      bloc: BlocProvider.of<PreferencesBloc>(context),
      builder: (BuildContext context, PreferencesState state) {
        final numberFormat = NumberFormat.simpleCurrency(
          locale: state.language,
        );

        return Text(
          numberFormat.format(amount),
          style: hero ? textTheme.headline : textTheme.body1,
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
