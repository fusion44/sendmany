import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PreferencesEvent extends Equatable {}

class LoadPreferencesEvent extends PreferencesEvent {
  @override
  List<Object> get props => const [];
}

class ChangeLanguageEvent extends PreferencesEvent {
  final String languageCode;

  ChangeLanguageEvent({@required this.languageCode});

  @override
  String toString() => 'Change language { lang: $languageCode }';

  @override
  List<Object> get props => [languageCode];
}

class ChangeThemeEvent extends PreferencesEvent {
  final String theme;
  ChangeThemeEvent({@required this.theme});

  @override
  String toString() => 'Change theme { lang: $theme }';

  @override
  List<Object> get props => [theme];
}

class SetOnboardingFinishedEvent extends PreferencesEvent {
  final bool onboardingFinished;

  SetOnboardingFinishedEvent([this.onboardingFinished = true]);

  @override
  List<Object> get props => [onboardingFinished];
}

class SetPinActiveEvent extends PreferencesEvent {
  final bool pinActive;

  SetPinActiveEvent([this.pinActive = true]);

  @override
  List<Object> get props => [pinActive];
}
