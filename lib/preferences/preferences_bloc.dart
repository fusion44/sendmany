import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:torden/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './bloc.dart';

class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  @override
  PreferencesState get initialState => PreferencesState(
        language: "en",
        theme: themeTorden,
      );

  @override
  Stream<PreferencesState> mapEventToState(
    PreferencesEvent event,
  ) async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (event is LoadPreferencesEvent) {
      String lang = prefs.getString(prefLanguageCode);
      String theme = prefs.getString(prefTheme);

      // Dont't set a default language here as it's happening in main.dart
      if (theme == null) {
        theme = themeTorden;
        prefs.setString(prefTheme, theme);
      }

      yield PreferencesState(language: lang, theme: theme);
    } else if (event is ChangeLanguageEvent) {
      yield PreferencesState(
        language: event.languageCode,
        theme: currentState.theme,
      );

      await prefs.setString(prefLanguageCode, event.languageCode);
    } else if (event is ChangeThemeEvent) {
      await prefs.setString(prefTheme, event.theme);
      yield PreferencesState(
        language: currentState.language,
        theme: event.theme,
      );
    }
  }
}
