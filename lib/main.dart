import 'package:background_fetch/background_fetch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_i18n/flutter_i18n_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/background/check_invoices_headless.dart';
import 'common/blocs/send_local_notification/send_notification_bloc.dart';
import 'common/connection/connection_manager/bloc.dart';
import 'common/constants.dart';
import 'common/pages/home_page.dart';
import 'common/pages/onboarding_page.dart';
import 'common/pages/pin_code_verification_page.dart';
import 'pedantic.dart';
import 'preferences/bloc.dart';
import 'preferences/preferences_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SendLocalNotificationBloc.initializeNotificationSystem();

  // Register to receive BackgroundFetch events after app is terminated.
  // Requires {stopOnTerminate: false, enableHeadless: true}
  await BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);

  var prefs = await SharedPreferences.getInstance();
  runApp(SendManyApp(sharedPreferences: prefs));
}

class SendManyApp extends StatefulWidget {
  final SharedPreferences sharedPreferences;

  SendManyApp({Key key, @required this.sharedPreferences}) : super(key: key);

  @override
  State<SendManyApp> createState() => _SendManyAppState();
}

class _SendManyAppState extends State<SendManyApp> {
  PreferencesBloc _preferencesBloc;
  ConnectionManagerBloc _connectionManagerBloc;
  Map<String, WidgetBuilder> _routes;
  bool _navigationScheduled = false;

  @override
  void initState() {
    _preferencesBloc = PreferencesBloc();
    _preferencesBloc.add(LoadPreferencesEvent());
    _connectionManagerBloc = ConnectionManagerBloc(_preferencesBloc);

    _routes = <String, WidgetBuilder>{
      '/': (BuildContext context) => _buildSplashPage(),
      '/onboarding': (BuildContext context) => _buildOnboardingPage(),
      '/splash': (BuildContext context) => _buildSplashPage(),
      '/setup': (BuildContext context) => Text('Setup'),
      '/home': (BuildContext context) => HomePage(),
      '/preferences': (BuildContext context) => PreferencesPage(),
      '/login': (BuildContext context) =>
          PinCodeVerificationScreen(_preferencesBloc),
    };

    initPlatformState();

    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    // var prefs = await SharedPreferences.getInstance();
    // await prefs.setInt(prefLastNumInvoices, -1);
    // await prefs.setInt(prefLastNumPayments, -1);
    // await prefs.setInt(prefLastNumOnchainTx, -1);

    // Configure BackgroundFetch.
    unawaited(
      BackgroundFetch.configure(
          BackgroundFetchConfig(
              minimumFetchInterval: 15,
              stopOnTerminate: false,
              enableHeadless: true,
              requiresBatteryNotLow: false,
              requiresCharging: false,
              requiresStorageNotLow: false,
              requiresDeviceIdle: false,
              requiredNetworkType: NetworkType.NONE), (String taskId) async {
        // This is the fetch-event callback.
        print('[BackgroundFetch] Event received $taskId');

        // IMPORTANT:  You must signal completion of your task or the OS can punish your app
        // for taking too long in the background.
        BackgroundFetch.finish(taskId);
      }).then((int status) {
        print('[BackgroundFetch] configure success: $status');
      }).catchError((e) {
        print('[BackgroundFetch] configure ERROR: $e');
      }),
    );

    await BackgroundFetch.start().then((int status) {
      print('[BackgroundFetch] start success: $status');
    }).catchError((e) {
      print('[BackgroundFetch] start FAILURE: $e');
    });

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;
  }

  Widget _buildSplashPage() {
    return BlocBuilder(
      cubit: _connectionManagerBloc,
      builder: (context, ConnectionManagerState connState) {
        return BlocBuilder(
          cubit: _preferencesBloc,
          builder: (BuildContext context, PreferencesState prefsState) {
            // possible states:
            // PreferencesLoadingState -> Show splash screen
            // PreferencesLoadedState:
            //  onboardingFinished false -> show Onboarding screen
            //  onboardingFinished true:
            //    pinActive false -> go to HomePage
            //    pinActive true -> go to LoginPage
            var connection = connState is ConnectionEstablishedState;
            if (prefsState is PreferencesLoadedState) {
              if (prefsState.onboardingFinished && connection) {
                if (prefsState.pinActive) {
                  _navigateToNamedRoute(context, '/login');
                } else {
                  _navigateToNamedRoute(context, '/home');
                }
              } else if (prefsState.onboardingFinished && !connection) {
                _buildSplashPage();
              } else {
                _navigateToNamedRoute(context, '/onboarding');
              }
            }
            return Scaffold(
              body: Center(child: Text('Splash')),
            );
          },
        );
      },
    );
  }

  void _navigateToNamedRoute(BuildContext context, String r) async {
    if (_navigationScheduled) return;
    _navigationScheduled = true;
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        _navigationScheduled = false;
        await Navigator.pushNamedAndRemoveUntil(
          context,
          r,
          (Route<dynamic> route) => false,
        );
      },
    );
  }

  Widget _buildOnboardingPage() {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _preferencesBloc),
        BlocProvider.value(value: _connectionManagerBloc),
      ],
      child: OnboardingPage(),
    );
  }

  @override
  void dispose() {
    _preferencesBloc.close();
    _connectionManagerBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PreferencesBloc>.value(value: _preferencesBloc),
        BlocProvider<ConnectionManagerBloc>.value(value: _connectionManagerBloc)
      ],
      child: _buildMaterialApp(),
    );
  }

  Widget _buildMaterialApp() {
    var delegates = _buildLocalizationDelegates();

    return BlocBuilder(
      cubit: _preferencesBloc,
      buildWhen: (PreferencesState oldState, PreferencesState newState) {
        if (oldState is PreferencesLoadingState) return true;
        return oldState.theme != newState.theme;
      },
      builder: (BuildContext context, PreferencesState prefsState) {
        return MaterialApp(
          theme: _getTheme(prefsState.theme),
          initialRoute: '/splash',
          routes: _routes,
          supportedLocales: const [Locale('en'), Locale('de'), Locale('nb')],
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
    var prefs = widget.sharedPreferences;
    var langCode = prefs.getString(prefLanguageCode);
    if (langCode == null) {
      _preferencesBloc.add(
        ChangeLanguageEvent(
          languageCode: deviceLocale.languageCode,
        ),
      );
      return deviceLocale;
    } else {
      return Locale(langCode);
    }
  }

  ThemeData _getTheme(String theme) {
    switch (theme) {
      case themeSendMany:
        return _buildSendManyTheme();
      case themeDark:
        return _buildSendManyThemeDark();
      case themeLight:
        return _buildSendManyThemeLight();
      default:
        return ThemeData.dark();
    }
  }

  ThemeData _buildSendManyTheme() {
    final base = ThemeData.dark();
    return base.copyWith(
        appBarTheme: base.appBarTheme.copyWith(
          color: sendManyBackground,
          elevation: 0,
        ),
        accentColor: sendManyOrange200,
        cardTheme: _buildSendManyCardTheme(base.cardTheme),
        primaryColor: sendManyPrimaryGreen500,
        scaffoldBackgroundColor: sendManyBackground,
        textTheme: _buildSendManyTextThemeRoboto(base.textTheme));
  }

  ThemeData _buildSendManyThemeDark() {
    final base = ThemeData.dark();
    return base.copyWith(
      textTheme: _buildSendManyTextThemeRoboto(base.textTheme),
    );
  }

  ThemeData _buildSendManyThemeLight() {
    final base = ThemeData.light();
    return base.copyWith(
      textTheme: _buildSendManyTextThemeRoboto(base.textTheme),
    );
  }

  TextTheme _buildSendManyTextThemeRoboto(TextTheme base) {
    return base
        .copyWith(
          headline5: base.headline5.copyWith(
            fontSize: 96,
            fontWeight: FontWeight.w200,
          ),
          headline4: base.headline4.copyWith(
            fontSize: 60,
            fontWeight: FontWeight.w200,
          ),
        )
        .apply(fontFamily: 'RobotoCondensed');
  }

  List<LocalizationsDelegate<dynamic>> _buildLocalizationDelegates() {
    var delegates = <LocalizationsDelegate<dynamic>>[];

    delegates.addAll([
      FlutterI18nDelegate(
        translationLoader: FileTranslationLoader(
          useCountryCode: false,
          fallbackFile: 'en',
          basePath: 'assets/i18n',
        ),
      ),
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate
    ]);
    return delegates;
  }

  CardTheme _buildSendManyCardTheme(CardTheme cardTheme) {
    return cardTheme.copyWith(
      color: sendManyBackgroundCard,
      shape: Border(),
      elevation: 0,
    );
  }
}
