import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart';
import 'package:torden/preferences/bloc.dart';

class TimeAgoTextWidget extends StatelessWidget {
  final bool allowFromNow;
  final DateTime date;

  const TimeAgoTextWidget({
    Key key,
    this.date,
    this.allowFromNow = true,
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
        return Text(formatted);
      },
    );
  }
}
