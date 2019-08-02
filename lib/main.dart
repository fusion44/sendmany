import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:torden/auth/login/login_page.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/pages/home_page.dart';
import 'package:torden/preferences/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/connection/connection_manager/bloc.dart';
import 'preferences/preferences_page.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}

void main() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  runApp(TordenApp(sharedPreferences: prefs));
}

class TordenApp extends StatefulWidget {
  final SharedPreferences sharedPreferences;
  TordenApp({Key key, @required this.sharedPreferences}) : super(key: key);

  @override
  State<TordenApp> createState() => _TordenAppState();
}

class _TordenAppState extends State<TordenApp> {
  PreferencesBloc _preferencesBloc;
  ConnectionManagerBloc _connectionManagerBloc;

  @override
  void initState() {
    _preferencesBloc = PreferencesBloc();
    _preferencesBloc.dispatch(LoadPreferencesEvent());
    _connectionManagerBloc = ConnectionManagerBloc();
    _connectionManagerBloc.dispatch(AppStart());
    super.initState();
  }

  @override
  void dispose() {
    _preferencesBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PreferencesBloc>(
          builder: (BuildContext context) => _preferencesBloc,
        ),
        BlocProvider<ConnectionManagerBloc>(
          builder: (BuildContext context) => _connectionManagerBloc,
        )
      ],
      child: _buildMaterialApp(),
    );
  }

  _buildMaterialApp() {
    var delegates = _buildLocalizationDelegates();

    return BlocBuilder(
      bloc: _preferencesBloc,
      condition: (PreferencesState oldState, PreferencesState newState) {
        return oldState.theme != newState.theme;
      },
      builder: (BuildContext context, PreferencesState prefsState) {
        String initialRoute = "login";
        // 1: No connection info to a node => setup screen
        /*if (prefsState.lnNodeIP == "" &&
              prefsState.lnNodeMacaroon == "" &&
              prefsState.lnNodeCertificate == "") {
            // TODO: If we can't find node info then
            // navigate to a setup screen
        
            initialRoute = "/setup";
          } else {
            // 2: We have connection info to a node => login screen
            initialRoute = "/login";
          }*/
        return MaterialApp(
          theme: _getTheme(prefsState.theme),
          initialRoute: initialRoute,
          routes: <String, WidgetBuilder>{
            "/": (BuildContext context) => LoginPage(),
            "/setup": (BuildContext context) => Text("Setup"),
            "/home": (BuildContext context) => HomePage(),
            "/preferences": (BuildContext context) => PreferencesPage(),
            "/send": (BuildContext context) => Scaffold(
                  appBar: AppBar(),
                  body: Center(child: Text("Send")),
                ),
            "/receive": (BuildContext context) => Scaffold(
                  appBar: AppBar(),
                  body: Center(child: Text("Receive")),
                ),
          },
          supportedLocales: const [Locale("en"), Locale("de"), Locale("nb")],
          localizationsDelegates: delegates,
          localeResolutionCallback: (deviceLocale, supportedLocales) {
            return _checkLocaleSetting(deviceLocale);
          },
        );
      },
    );
  }

  Locale _checkLocaleSetting(Locale deviceLocale) {
    // Preset the language preference with current device locale
    // to give the PreferencesBloc a warm start on new installs
    SharedPreferences prefs = widget.sharedPreferences;
    String langCode = prefs.getString(prefLanguageCode);
    if (langCode == null) {
      _preferencesBloc.dispatch(
        ChangeLanguageEvent(
          languageCode: deviceLocale.languageCode,
        ),
      );
      return deviceLocale;
    } else {
      return Locale(langCode);
    }
  }

  _getTheme(String theme) {
    switch (theme) {
      case themeTorden:
        return _buildTordenTheme();
      case themeDark:
        return _buildTordenThemeDark();
      case themeLight:
        return _buildTordenThemeLight();
      default:
        return ThemeData.dark();
    }
  }

  _buildTordenTheme() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
        accentColor: tordenOrange200,
        cardTheme: _buildTordenCardTheme(base.cardTheme),
        primaryColor: tordenPrimaryGreen500,
        scaffoldBackgroundColor: tordenBackground,
        textTheme: _buildTordenTextThemeRoboto(base.textTheme));
  }

  ThemeData _buildTordenThemeDark() {
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      textTheme: _buildTordenTextThemeRoboto(base.textTheme),
    );
  }

  ThemeData _buildTordenThemeLight() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      textTheme: _buildTordenTextThemeRoboto(base.textTheme),
    );
  }

  TextTheme _buildTordenTextThemeRoboto(TextTheme base) {
    return base
        .copyWith(
          headline: base.headline.copyWith(
            fontSize: 96,
            fontWeight: FontWeight.w200,
          ),
          display1: base.display1.copyWith(
            fontSize: 60,
            fontWeight: FontWeight.w200,
          ),
        )
        .apply(fontFamily: "RobotoCondensed");
  }

  _buildLocalizationDelegates() {
    var delegates = List<LocalizationsDelegate<dynamic>>();
    delegates.addAll([
      FlutterI18nDelegate(
          useCountryCode: false, fallbackFile: "en", path: "assets/i18n"),
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ]);
    return delegates;
  }

  _buildTordenCardTheme(CardTheme cardTheme) {
    return cardTheme.copyWith(
      color: tordenBackgroundCard,
      shape: Border(),
      elevation: 0,
    );
  }
}
