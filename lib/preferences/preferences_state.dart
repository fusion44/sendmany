import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/models/lnd_connection_data.dart';

@immutable
class PreferencesState extends Equatable {
  final String language;
  final String theme;
  final bool onboardingFinished;
  final int numNodes;
  final bool pinActive;
  final LndConnectionData activeConnection;
  final List<LndConnectionData> connections;

  PreferencesState({
    @required this.language,
    @required this.theme,
    @required this.onboardingFinished,
    @required this.numNodes,
    @required this.pinActive,
    @required this.activeConnection,
    @required this.connections,
  });

  @override
  List<Object> get props => [
        language,
        theme,
        onboardingFinished,
        numNodes,
        pinActive,
        activeConnection,
        connections,
      ];
}

class PreferencesLoadingState extends PreferencesState {
  PreferencesLoadingState({
    String language = 'EN',
    String theme = themeSendMany,
    bool onboardingFinished = false,
    int numNodes = 0,
    bool pinActive = true,
    LndConnectionData activeConnection,
    List<LndConnectionData> connections = const <LndConnectionData>[],
  }) : super(
          language: language,
          theme: theme,
          onboardingFinished: onboardingFinished,
          numNodes: numNodes,
          pinActive: pinActive,
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
    @required bool pinActive,
    @required LndConnectionData activeConnection,
    @required List<LndConnectionData> connections,
  }) : super(
          language: language,
          theme: theme,
          onboardingFinished: onboardingFinished,
          numNodes: numNodes,
          pinActive: pinActive,
          activeConnection: activeConnection,
          connections: connections,
        );
}
