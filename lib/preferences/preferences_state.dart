import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../common/constants.dart';
import '../common/models/lnd_connection_data.dart';

@immutable
class PreferencesState extends Equatable {
  final String language;
  final String theme;
  final bool onboardingFinished;
  final int numNodes;
  final LndConnectionData activeConnection;
  final List<LndConnectionData> connections;
  final bool pinActive;
  final String pin;

  PreferencesState({
    @required this.language,
    @required this.theme,
    @required this.onboardingFinished,
    @required this.numNodes,
    @required this.activeConnection,
    @required this.connections,
    this.pinActive = false,
    this.pin = '',
  });

  @override
  List<Object> get props => [
        language,
        theme,
        onboardingFinished,
        numNodes,
        activeConnection,
        connections,
        pinActive,
        pin,
      ];
}

class PreferencesLoadingState extends PreferencesState {
  PreferencesLoadingState({
    String language = 'EN',
    String theme = themeSendMany,
    bool onboardingFinished = false,
    int numNodes = 0,
    LndConnectionData activeConnection,
    List<LndConnectionData> connections = const <LndConnectionData>[],
  }) : super(
          language: language,
          theme: theme,
          onboardingFinished: onboardingFinished,
          numNodes: numNodes,
          activeConnection: activeConnection,
          connections: connections,
        );
}

class PreferencesLoadedState extends PreferencesState {
  PreferencesLoadedState({
    @required String language,
    @required String theme,
    @required bool onboardingFinished,
    @required int numNodes,
    @required LndConnectionData activeConnection,
    @required List<LndConnectionData> connections,
    bool pinActive = false,
    String pin = '',
  }) : super(
          language: language,
          theme: theme,
          onboardingFinished: onboardingFinished,
          numNodes: numNodes,
          activeConnection: activeConnection,
          connections: connections,
          pinActive: pinActive,
          pin: pin,
        );
}
