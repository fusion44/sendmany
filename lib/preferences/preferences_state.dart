import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class PreferencesState extends Equatable {
  final String language;
  final String theme;

  PreferencesState({
    @required this.language,
    @required this.theme,
  }) : super([language, theme]);
}
