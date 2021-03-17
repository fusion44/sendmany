import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../preferences/bloc.dart';
import '../constants.dart';
import '../widgets/set_pin_dialog.dart';
import '../widgets/widgets.dart';
import 'retrieve_connection_info_page.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentStep = 0;

  PreferencesBloc prefsBloc;

  @override
  void initState() {
    super.initState();
    prefsBloc = BlocProvider.of<PreferencesBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(height: 40),
          Container(
            height: 96,
            width: 96,
            child: Image.asset('assets/images/logo.png'),
          ),
          ..._buildBody(),
        ],
      ),
    );
  }

  void _navigateToAddRemoteNode({bool scan}) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return RetrieveConnectionInfoPage(showScanView: scan);
      }),
    );
    if (result == true) {
      setState(() {
        _currentStep = 1;
      });
    }
  }

  List<Widget> _buildBody() {
    var theme = Theme.of(context);

    if (_currentStep == 0) {
      // Connect to remote node
      return [
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: TranslatedText(
            'onboarding.first_header',
            textAlign: TextAlign.center,
            style: theme.textTheme.headline4,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: TranslatedText('onboarding.intro_text_long'),
          ),
        ),
        TranslatedText(
          'onboarding.question_how_to_input_conn_data',
          style: theme.textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildElevatedButton(
              'onboarding.button_enter_conn_data_manual',
              () {
                _navigateToAddRemoteNode(scan: false);
              },
            ),
            Container(width: 16.0),
            _buildElevatedButton(
              'onboarding.button_enter_conn_data_qr_scan',
              () {
                _navigateToAddRemoteNode(scan: true);
              },
            ),
          ],
        ),
        Container(height: 56.0),
      ];
    } else if (_currentStep == 1) {
      return [
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: TranslatedText(
            'onboarding.second_header',
            textAlign: TextAlign.center,
            style: theme.textTheme.headline4,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: TranslatedText('onboarding.pin_text_long'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildElevatedButton(
              'onboarding.button_skip_pin',
              _finishOnboarding,
            ),
            Container(width: 16.0),
            _buildElevatedButton(
              'onboarding.button_setup_pin',
              () {
                _showSetPinDialog(context);
              },
            )
          ],
        ),
        Container(height: 56.0),
      ];
    } else {
      return [Text('Unknown step $_currentStep')];
    }
  }

  ElevatedButton _buildElevatedButton(String textId, Function callback) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(primary: sendManyDarkGreen),
      child: TranslatedText(textId),
    );
  }

  void _showSetPinDialog(BuildContext context) async {
    var pin = await showDialog(
      context: context,
      builder: (BuildContext dlgContext) => SetPinDialog(),
    );

    if (pin is String && pin.length == 4) {
      prefsBloc.add(ChangePinEvent(true, pin));
      _finishOnboarding();
    }
  }

  void _finishOnboarding() {
    prefsBloc.add(SetOnboardingFinishedEvent());
    Navigator.pushNamedAndRemoveUntil(
      context,
      '/home',
      (Route<dynamic> route) => false,
    );
  }
}
