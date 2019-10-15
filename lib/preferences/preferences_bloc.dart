import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sendmany/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sendmany/common/models/models.dart';
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
        theme = themeSendMany;
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

      final storage = FlutterSecureStorage();
      String connectionJSON = await storage.read(key: prefConnectionData);
      String activeConnectionName =
          await storage.read(key: prefActiveConnection);
      List items;

      LndConnectionData activeConnection;
      if (connectionJSON != null) {
        items = json.decode(connectionJSON, reviver: (a, b) {
          if (b is String) {
            LndConnectionData c = LndConnectionData.fromJSON(b);
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
        theme: currentState.theme,
        onboardingFinished: currentState.onboardingFinished,
        numNodes: currentState.numNodes,
        pinActive: currentState.pinActive,
        activeConnection: currentState.activeConnection,
        connections: currentState.connections,
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
        activeConnection: currentState.activeConnection,
        connections: currentState.connections,
      );
    } else if (event is SetOnboardingFinishedEvent) {
      await prefs.setBool(prefOnboardingFinished, event.onboardingFinished);
      yield PreferencesLoadedState(
        language: currentState.language,
        theme: currentState.theme,
        onboardingFinished: event.onboardingFinished,
        numNodes: currentState.numNodes,
        pinActive: currentState.pinActive,
        activeConnection: currentState.activeConnection,
        connections: currentState.connections,
      );
    } else if (event is SetPinActiveEvent) {
      await prefs.setBool(prefOnboardingFinished, event.pinActive);
      yield PreferencesLoadedState(
        language: currentState.language,
        theme: currentState.theme,
        onboardingFinished: currentState.onboardingFinished,
        numNodes: currentState.numNodes,
        pinActive: event.pinActive,
        activeConnection: currentState.activeConnection,
        connections: currentState.connections,
      );
    } else if (event is ChangeActiveConnectionEvent) {
      final storage = FlutterSecureStorage();

      await storage.write(
        key: prefActiveConnection,
        value: event.connectionName,
      );

      yield PreferencesLoadedState(
        language: currentState.language,
        theme: currentState.theme,
        onboardingFinished: currentState.onboardingFinished,
        numNodes: currentState.numNodes,
        pinActive: currentState.pinActive,
        activeConnection: _getConnectionByName(event.connectionName),
        connections: currentState.connections,
      );
    } else if (event is AddConnectionEvent) {
      final storage = FlutterSecureStorage();
      try {
        List<LndConnectionData> connectionData = List<LndConnectionData>.from(
          currentState.connections,
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
          language: currentState.language,
          theme: currentState.theme,
          onboardingFinished: currentState.onboardingFinished,
          numNodes: currentState.numNodes,
          pinActive: currentState.pinActive,
          activeConnection: event.connection,
          connections: connectionData,
        );
      } catch (error) {
        print(error);
      }
    }
  }

  LndConnectionData _getConnectionByName(String name) {
    for (LndConnectionData connection in currentState.connections) {
      if (connection.name == name) return connection;
    }
    return null;
  }
}
