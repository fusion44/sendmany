import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/preferences/bloc.dart';

import 'retrieve_connection_info_page.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int _currentStep = 0;

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
            child: Image.asset("assets/images/logo.png"),
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
        return RetrieveConnectionInfoPage(doScan: scan);
      }),
    );
    if (result == true) {
      setState(() {
        _currentStep = 1;
      });
    }
  }

  _buildBody() {
    ThemeData theme = Theme.of(context);

    if (_currentStep == 0) {
      // Connect to remote node
      return [
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: TranslatedText(
            "onboarding.first_header",
            textAlign: TextAlign.center,
            style: theme.textTheme.display1,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: TranslatedText("onboarding.intro_text_long"),
          ),
        ),
        TranslatedText(
          "onboarding.question_how_to_input_conn_data",
          style: theme.textTheme.body2,
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: TranslatedText(
                "onboarding.button_enter_conn_data_manual",
              ),
              onPressed: () {
                _navigateToAddRemoteNode(scan: false);
              },
              color: tordenDarkGreen,
            ),
            Container(width: 16.0),
            RaisedButton(
              child: TranslatedText(
                "onboarding.button_enter_conn_data_qr_scan",
              ),
              onPressed: () {
                _navigateToAddRemoteNode(scan: true);
              },
              color: tordenDarkGreen,
            )
          ],
        ),
        Container(height: 56.0),
      ];
    } else if (_currentStep == 1) {
      return [
        Padding(
          padding: const EdgeInsets.only(bottom: 32.0),
          child: TranslatedText(
            "onboarding.second_header",
            textAlign: TextAlign.center,
            style: theme.textTheme.display1,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: TranslatedText("onboarding.pin_text_long"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: TranslatedText(
                "onboarding.button_skip_pin",
              ),
              onPressed: () {
                PreferencesBloc bloc = BlocProvider.of(context);
                bloc.dispatch(SetOnboardingFinishedEvent());
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/splash",
                  (Route<dynamic> route) => false,
                );
              },
              color: tordenDarkGreen,
            ),
            Container(width: 16.0),
            RaisedButton(
              child: TranslatedText(
                "onboarding.button_setup_pin",
              ),
              onPressed: null, // TODO: implement me
              color: tordenDarkGreen,
            )
          ],
        ),
        Container(height: 56.0),
      ];
    } else {
      return [Text("Unknown step $_currentStep")];
    }
  }
}
