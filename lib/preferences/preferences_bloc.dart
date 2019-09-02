import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:torden/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './bloc.dart';

class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  @override
  PreferencesState get initialState => PreferencesLoadingState();

  @override
  Stream<PreferencesState> mapEventToState(
    PreferencesEvent event,
  ) async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (event is LoadPreferencesEvent) {
      // Dont't set a default language here as it's happening in main.dart
      String lang = prefs.getString(prefLanguageCode);

      String theme = prefs.getString(prefTheme);
      if (theme == null) {
        theme = themeTorden;
        prefs.setString(prefTheme, theme);
      }

      bool onboarding = prefs.getBool(prefOnboardingFinished);
      if (onboarding == null) {
        onboarding = false;
        prefs.setBool(prefOnboardingFinished, false);
      }

      int numNodes = prefs.getInt(prefNumNodes);
      if (onboarding == null) {
        numNodes = 0;
        prefs.setInt(prefNumNodes, 0);
      }

      bool pinActive = prefs.getBool(prefPinActive);
      if (pinActive == null) {
        pinActive = false;
        prefs.setBool(prefPinActive, false);
      }

      yield PreferencesLoadedState(
        language: lang,
        theme: theme,
        onboardingFinished: onboarding,
        numNodes: numNodes,
        pinActive: pinActive,
      );
    } else if (event is ChangeLanguageEvent) {
      yield PreferencesLoadedState(
        language: event.languageCode,
        theme: currentState.theme,
        onboardingFinished: currentState.onboardingFinished,
        numNodes: currentState.numNodes,
        pinActive: currentState.pinActive,
      );

      await prefs.setString(prefLanguageCode, event.languageCode);
    } else if (event is ChangeThemeEvent) {
      await prefs.setString(prefTheme, event.theme);
      yield PreferencesLoadedState(
        language: currentState.language,
        theme: event.theme,
        onboardingFinished: currentState.onboardingFinished,
        numNodes: currentState.numNodes,
        pinActive: currentState.pinActive,
      );
    } else if (event is SetOnboardingFinishedEvent) {
      await prefs.setBool(prefOnboardingFinished, event.onboardingFinished);
      yield PreferencesLoadedState(
        language: currentState.language,
        theme: currentState.theme,
        onboardingFinished: event.onboardingFinished,
        numNodes: currentState.numNodes,
        pinActive: currentState.pinActive,
      );
    } else if (event is SetPinActiveEvent) {
      await prefs.setBool(prefOnboardingFinished, event.pinActive);
      yield PreferencesLoadedState(
        language: currentState.language,
        theme: currentState.theme,
        onboardingFinished: currentState.onboardingFinished,
        numNodes: currentState.numNodes,
        pinActive: event.pinActive,
      );
    }
  }
}
