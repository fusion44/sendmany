library torden.utils;

import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

/// Translates a string with the given [key] and the [translationParams].
String tr(BuildContext context, String key,
    [Map<String, String> translationParams]) {
  return FlutterI18n.translate(context, key, translationParams);
}

/// Returns the full language name of the provided language code
LanguageDisplayData getLanguageCodeDisplayData(String code) {
  switch (code) {
    case "de":
      return LanguageDisplayData(
        "German",
        Image.asset("assets/flags/de.png"),
      );
    case "en":
      return LanguageDisplayData(
        "English",
        Image.asset("assets/flags/gb.png"),
      );
    case "nb":
      return LanguageDisplayData(
        "Norwegian Bokmål",
        Image.asset("assets/flags/no.png"),
      );
    default:
      return LanguageDisplayData("Unknown", null);
  }
}

class LanguageDisplayData {
  final String name;
  final Image flag;

  LanguageDisplayData(this.name, this.flag);
}
