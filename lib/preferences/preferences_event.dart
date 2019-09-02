import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PreferencesEvent extends Equatable {
  PreferencesEvent([List props = const []]) : super(props);
}

class LoadPreferencesEvent extends PreferencesEvent {}

class ChangeLanguageEvent extends PreferencesEvent {
  final String languageCode;

  ChangeLanguageEvent({@required this.languageCode}) : super([languageCode]);

  @override
  String toString() => 'Change language { lang: $languageCode }';
}

class ChangeThemeEvent extends PreferencesEvent {
  final String theme;
  ChangeThemeEvent({@required this.theme}) : super([theme]);

  @override
  String toString() => 'Change theme { lang: $theme }';
}

class SetOnboardingFinishedEvent extends PreferencesEvent {
  final bool onboardingFinished;

  SetOnboardingFinishedEvent([this.onboardingFinished = true]);
}

class SetPinActiveEvent extends PreferencesEvent {
  final bool pinActive;

  SetPinActiveEvent([this.pinActive = true]);
}
