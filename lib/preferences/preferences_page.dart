import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../common/models/models.dart';
import '../common/pages/retrieve_connection_info_page.dart';
import '../common/utils.dart';
import '../common/widgets/set_pin_dialog.dart';
import '../common/widgets/widgets.dart';
import 'bloc.dart';

class PreferencesPage extends StatefulWidget {
  PreferencesPage({Key key}) : super(key: key);

  @override
  State<PreferencesPage> createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  PreferencesBloc prefsBloc;
  @override
  void initState() {
    super.initState();
    prefsBloc = BlocProvider.of<PreferencesBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
        cubit: BlocProvider.of<PreferencesBloc>(context),
        builder: (BuildContext context, PreferencesState state) {
          return Scaffold(
            body: Center(
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: TranslatedText('prefs.language_label'),
                    trailing: DropdownButton(
                      value: state.language,
                      onChanged: (value) {
                        BlocProvider.of<PreferencesBloc>(context).add(
                          ChangeLanguageEvent(languageCode: value),
                        );
                      },
                      items: _getLanguageItems(),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: TranslatedText('prefs.theme_label'),
                    trailing: DropdownButton(
                      value: state.theme,
                      onChanged: (value) {
                        BlocProvider.of<PreferencesBloc>(context).add(
                          ChangeThemeEvent(theme: value),
                        );
                      },
                      items: _getThemeItems(),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: TranslatedText('prefs.node_dropdown'),
                    trailing: DropdownButton<String>(
                      value: state.activeConnection.name,
                      onChanged: (value) {
                        BlocProvider.of<PreferencesBloc>(context).add(
                          ChangeActiveConnectionEvent(value),
                        );
                      },
                      items: _buildNodeItems(state.connections),
                    ),
                  ),
                  Divider(),
                  SwitchListTile(
                    title: TranslatedText('prefs.enable_pin'),
                    value: state.pinActive,
                    onChanged: (bool value) {
                      if (state.pinActive) {
                        _unsetPinDialog(context, state.pin);
                      } else {
                        _showSetPinDialog(context);
                      }
                    },
                  ),
                  Spacer(),
                  Text(
                    '0.6.0-beta',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          );
        });
  }

  List<DropdownMenuItem<String>> _getLanguageItems() {
    var l = <String>['en', 'de', 'nb'].map<DropdownMenuItem<String>>(
      (String value) {
        var data = getLanguageCodeDisplayData(value);
        return DropdownMenuItem<String>(
          value: value,
          child: Row(children: [
            SizedBox(
              width: 15,
              height: 15,
              child: data.flag,
            ),
            Container(width: 8),
            Text(data.name)
          ]),
        );
      },
    ).toList();
    return l;
  }

  List<DropdownMenuItem<String>> _getThemeItems() {
    return [
      'SendMany',
      'Dark',
      'Light',
    ].map<DropdownMenuItem<String>>(
      (String value) {
        return DropdownMenuItem<String>(
          value: value.toLowerCase(),
          child: Text(value),
        );
      },
    ).toList();
  }

  List<DropdownMenuItem<String>> _buildNodeItems(
    List<LndConnectionData> connections,
  ) {
    var l = connections.map<DropdownMenuItem<String>>(
      (LndConnectionData data) {
        return DropdownMenuItem<String>(
          value: data.name,
          child: Text(data.name),
        );
      },
    ).toList();
    l.add(
      DropdownMenuItem<String>(
        value: 'add_node',
        child: ElevatedButton(
          onPressed: () {
            _navigateToAddRemoteNode();
          },
          child: TranslatedText('prefs.add_node_btn'),
        ),
      ),
    );
    return l;
  }

  void _navigateToAddRemoteNode() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return BlocProvider.value(
          value: BlocProvider.of<PreferencesBloc>(context),
          child: RetrieveConnectionInfoPage(),
        );
      }),
    );
  }

  void _showSetPinDialog(BuildContext context) async {
    var pin = await showDialog(
      context: context,
      builder: (BuildContext dlgContext) => SetPinDialog(),
    );

    if (pin is String && pin.length == 4) {
      prefsBloc.add(ChangePinEvent(true, pin));
    }
  }

  void _unsetPinDialog(BuildContext context, String pin) async {
    var res = await showVerifyPinDialog(context, pin);
    if (res) {
      prefsBloc.add(ChangePinEvent(false));
    }
  }
}
