import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:sendmany/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sendmany/common/models/models.dart';
import '../pedantic.dart';
import './bloc.dart';

class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  final String _hiveBoxName = 'prefs_hive_box';

  @override
  PreferencesState get initialState => PreferencesLoadingState();

  @override
  Stream<PreferencesState> mapEventToState(
    PreferencesEvent event,
  ) async* {
    var prefs = await SharedPreferences.getInstance();
    if (event is LoadPreferencesEvent) {
      // Don't set a default language here as it's happening in main.dart
      var lang = prefs.getString(prefLanguageCode);

      var theme = prefs.getString(prefTheme);
      if (theme == null) {
        theme = themeSendMany;
        unawaited(prefs.setString(prefTheme, theme));
      }

      var onboarding = prefs.getBool(prefOnboardingFinished);
      if (onboarding == null) {
        onboarding = false;
        unawaited(prefs.setBool(prefOnboardingFinished, false));
      }

      var numNodes = prefs.getInt(prefNumNodes);
      if (onboarding == null) {
        numNodes = 0;
        unawaited(prefs.setInt(prefNumNodes, 0));
      }

      var pinActive = prefs.getBool(prefPinActive);
      if (pinActive == null) {
        pinActive = false;
        unawaited(prefs.setBool(prefPinActive, false));
      }

      final box = await Hive.openBox(_hiveBoxName);

      var connectionJSON = await box.get(prefConnectionData);
      var activeConnectionName = await box.get(prefActiveConnection);
      List items;

      LndConnectionData activeConnection;
      if (connectionJSON != null) {
        items = json.decode(connectionJSON, reviver: (a, b) {
          if (b is String) {
            var c = LndConnectionData.fromJSON(b);
            if (c.name == activeConnectionName) activeConnection = c;
            return c;
          } else {
            return b;
          }
        });
      }

      yield PreferencesLoadedState(
        language: lang,
        theme: theme,
        onboardingFinished: onboarding,
        numNodes: numNodes,
        pinActive: pinActive,
        activeConnection: activeConnection,
        connections: items != null
            ? items.cast<LndConnectionData>()
            : const <LndConnectionData>[],
      );
    } else if (event is ChangeLanguageEvent) {
      yield PreferencesLoadedState(
        language: event.languageCode,
        theme: state.theme,
        onboardingFinished: state.onboardingFinished,
        numNodes: state.numNodes,
        pinActive: state.pinActive,
        activeConnection: state.activeConnection,
        connections: state.connections,
      );

      await prefs.setString(prefLanguageCode, event.languageCode);
    } else if (event is ChangeThemeEvent) {
      await prefs.setString(prefTheme, event.theme);
      yield PreferencesLoadedState(
        language: state.language,
        theme: event.theme,
        onboardingFinished: state.onboardingFinished,
        numNodes: state.numNodes,
        pinActive: state.pinActive,
        activeConnection: state.activeConnection,
        connections: state.connections,
      );
    } else if (event is SetOnboardingFinishedEvent) {
      await prefs.setBool(prefOnboardingFinished, event.onboardingFinished);
      yield PreferencesLoadedState(
        language: state.language,
        theme: state.theme,
        onboardingFinished: event.onboardingFinished,
        numNodes: state.numNodes,
        pinActive: state.pinActive,
        activeConnection: state.activeConnection,
        connections: state.connections,
      );
    } else if (event is SetPinActiveEvent) {
      await prefs.setBool(prefOnboardingFinished, event.pinActive);
      yield PreferencesLoadedState(
        language: state.language,
        theme: state.theme,
        onboardingFinished: state.onboardingFinished,
        numNodes: state.numNodes,
        pinActive: event.pinActive,
        activeConnection: state.activeConnection,
        connections: state.connections,
      );
    } else if (event is ChangeActiveConnectionEvent) {
      final box = await Hive.openBox(_hiveBoxName);

      await box.put(
        prefActiveConnection,
        event.connectionName,
      );

      yield PreferencesLoadedState(
        language: state.language,
        theme: state.theme,
        onboardingFinished: state.onboardingFinished,
        numNodes: state.numNodes,
        pinActive: state.pinActive,
        activeConnection: _getConnectionByName(event.connectionName),
        connections: state.connections,
      );
    } else if (event is AddConnectionEvent) {
      final box = await Hive.openBox(_hiveBoxName);

      try {
        var connectionData = List<LndConnectionData>.from(
          state.connections,
        );
        connectionData.add(event.connection);

        // set the new node as active by default
        await box.put(
          prefActiveConnection,
          event.connection.name,
        );

        await box.put(
          prefConnectionData,
          json.encode(
            connectionData,
            toEncodable: (object) {
              if (object is LndConnectionData) {
                return object.toJSON();
              } else {
                throw TypeError();
              }
            },
          ),
        );

        yield PreferencesLoadedState(
          language: state.language,
          theme: state.theme,
          onboardingFinished: state.onboardingFinished,
          numNodes: state.numNodes,
          pinActive: state.pinActive,
          activeConnection: event.connection,
          connections: connectionData,
        );
      } catch (error) {
        print(error);
      }
    }
  }

  LndConnectionData _getConnectionByName(String name) {
    for (var connection in state.connections) {
      if (connection.name == name) return connection;
    }
    return null;
  }
}
