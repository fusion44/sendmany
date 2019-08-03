import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/preferences/bloc.dart';

class PreferencesPage extends StatefulWidget {
  PreferencesPage({Key key}) : super(key: key);

  @override
  State<PreferencesPage> createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  @override
  Widget build(BuildContext context) {
    final PreferencesBloc prefsBloc = BlocProvider.of<PreferencesBloc>(context);

    return BlocBuilder(
        bloc: prefsBloc,
        builder: (BuildContext context, PreferencesState state) {
          return Scaffold(
            body: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TranslatedText("prefs.language_label"),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: DropdownButton(
                          value: state.language,
                          onChanged: (value) {
                            prefsBloc.dispatch(
                                ChangeLanguageEvent(languageCode: value));
                          },
                          items: _getLanguageItems(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TranslatedText("prefs.theme_label"),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: DropdownButton(
                          value: state.theme,
                          onChanged: (value) {
                            prefsBloc.dispatch(ChangeThemeEvent(theme: value));
                          },
                          items: _getThemeItems(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  _getLanguageItems() {
    List<DropdownMenuItem<String>> l =
        <String>["en", "de", "nb"].map<DropdownMenuItem<String>>(
      (String value) {
        LanguageDisplayData data = getLanguageCodeDisplayData(value);
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

  _getThemeItems() {
    return [
      "Torden",
      "Dark",
      "Light",
    ].map<DropdownMenuItem<String>>(
      (String value) {
        return DropdownMenuItem<String>(
          value: value.toLowerCase(),
          child: Text(value),
        );
      },
    ).toList();
  }
}
