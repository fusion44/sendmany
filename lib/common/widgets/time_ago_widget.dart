import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart';
import 'package:sendmany/preferences/bloc.dart';

class TimeAgoTextWidget extends StatelessWidget {
  final bool allowFromNow;
  final DateTime date;
  final TextStyle style;
  final TextOverflow overflow;
  final bool softWrap;

  const TimeAgoTextWidget(
    this.date, {
    Key key,
    this.allowFromNow = true,
    this.style,
    this.overflow,
    this.softWrap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<PreferencesBloc>(context),
      builder: (BuildContext context, PreferencesState state) {
        String formatted = format(
          date,
          allowFromNow: allowFromNow,
          locale: state.language,
        );
        return Text(
          formatted,
          style: style,
          overflow: overflow,
          softWrap: softWrap,
        );
      },
    );
  }
}
