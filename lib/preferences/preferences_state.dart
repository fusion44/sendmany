import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/constants.dart';

@immutable
class PreferencesState extends Equatable {
  final String language;
  final String theme;
  final bool onboardingFinished;
  final int numNodes;
  final bool pinActive;

  PreferencesState({
    @required this.language,
    @required this.theme,
    @required this.onboardingFinished,
    @required this.numNodes,
    @required this.pinActive,
  });

  @override
  List<Object> get props => [
        language,
        theme,
        onboardingFinished,
        numNodes,
        pinActive,
      ];
}

class PreferencesLoadingState extends PreferencesState {
  final String language;
  final String theme;
  final bool onboardingFinished;
  final int numNodes;
  final bool pinActive;

  PreferencesLoadingState({
    this.language = "EN",
    this.theme = themeTorden,
    this.onboardingFinished = false,
    this.numNodes = 0,
    this.pinActive = true,
  }) : super(
          language: language,
          theme: theme,
          onboardingFinished: onboardingFinished,
          numNodes: numNodes,
          pinActive: pinActive,
        );
}

class PreferencesLoadedState extends PreferencesState {
  final String language;
  final String theme;
  final bool onboardingFinished;
  final int numNodes;
  final bool pinActive;

  PreferencesLoadedState({
    @required this.language,
    @required this.theme,
    @required this.onboardingFinished,
    @required this.numNodes,
    @required this.pinActive,
  }) : super(
          language: language,
          theme: theme,
          onboardingFinished: onboardingFinished,
          numNodes: numNodes,
          pinActive: pinActive,
        );
}
