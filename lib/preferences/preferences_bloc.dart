import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/constants.dart';
import '../common/models/models.dart';
import '../pedantic.dart';
import 'bloc.dart';

class PreferencesBloc extends Bloc<PreferencesEvent, PreferencesState> {
  PreferencesBloc() : super(PreferencesLoadingState());

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

      final storage = FlutterSecureStorage();
      var connectionJSON = await storage.read(key: prefConnectionData);
      var activeConnectionName = await storage.read(key: prefActiveConnection);
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

      var val = await storage.read(key: prefPinActive);
      var pinActive = false;
      var pin = '';
      if (val == 'true') {
        pinActive = true;
        pin = await storage.read(key: prefPin);
      } else if (val == null) {
        await storage.write(key: prefPinActive, value: 'false');
      }

      yield PreferencesLoadedState(
        language: lang,
        theme: theme,
        onboardingFinished: onboarding,
        numNodes: numNodes,
        activeConnection: activeConnection,
        connections: items != null
            ? items.cast<LndConnectionData>()
            : const <LndConnectionData>[],
        pinActive: pinActive,
        pin: pin,
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
      final storage = FlutterSecureStorage();

      await storage.write(
        key: prefActiveConnection,
        value: event.connectionName,
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
      final storage = FlutterSecureStorage();
      try {
        var connectionData = List<LndConnectionData>.from(
          state.connections,
        );
        connectionData.add(event.connection);

        // set the new node as active by default
        await storage.write(
          key: prefActiveConnection,
          value: event.connection.name,
        );

        await storage.write(
          key: prefConnectionData,
          value: json.encode(
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
    } else if (event is ChangePinEvent) {
      final storage = FlutterSecureStorage();
      await storage.write(key: prefPinActive, value: event.active.toString());
      await storage.write(key: prefPin, value: event.pin);

      yield PreferencesLoadedState(
        language: state.language,
        theme: state.theme,
        onboardingFinished: state.onboardingFinished,
        numNodes: state.numNodes,
        activeConnection: state.activeConnection,
        connections: state.connections,
        pinActive: event.active,
        pin: event.pin,
      );
    }
  }

  LndConnectionData _getConnectionByName(String name) {
    for (var connection in state.connections) {
      if (connection.name == name) return connection;
    }
    return null;
  }
}
