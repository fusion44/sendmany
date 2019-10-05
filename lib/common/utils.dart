library torden.utils;

import 'package:bolt11_decoder/bolt11_decoder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:timeago/timeago.dart' as timeago;

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

/// Updates the time ago library with the current language
void updateTimeAgoLib(String lang) {
  if (lang == "de") {
    timeago.setLocaleMessages(lang, timeago.DeMessages());
  } else if (lang == "nb") {
    timeago.setLocaleMessages("nb", timeago.NbNoMessages());
  } else {
    timeago.setLocaleMessages(lang, timeago.EnMessages());
  }
}

enum PaymentLayer {
  /// lightning
  // Mainnet: lnbc
  // Testnet: lntb
  // Regtest: lncrt
  lightning,
  onchain,
  unknown,
}

enum Network { mainnet, testnet, regtest }

enum BitcoindAddressType {
  /// onchain mainnet
  // P2PKH which begin with the number 1, eg: 1BvBMSEYstWetqTFn5Au4m4GFg7xJaNVN2
  // P2SH type starting with the number 3, eg: 3J98t1WpEZ73CNmQviecrnyiWrnqRhWNLy
  // Bech32 type starting with bc1, eg: bc1qar0srrr7xfkvy5l643lydnw9re59gtzzwf5mdq
  /// onchain testnet
  // P2PKH which begin with m, eg: mipcBbFg9gMiCh81Kj8tqqdgoZub1ZJRfn
  // P2SH type starting with the number 2, eg: 2MzQwSSnBHWHqSAqtTVQ6v47XtaisrJa1Vc
  // Bech32 type starting with tb1, eg: tb1qw508d6qejxtdg4y5r3zarvary0c5xw7kxpjzsx
  p2pkh,
  p2sh,
  bech32,
}

class QrInfo {
  // Can be the amount or the ln invoice
  String address;
  // the amount of the invoice or onchain payment request
  String amount;
  // onchina or lightning
  PaymentLayer layer;
  // mainnet, testnet, regtest
  Network network;
  // bitcoin address type for the selected network type
  BitcoindAddressType btcAddressType;
}

/// Checks a String if it is a valid lightning invoice or
/// an onchain address.
QrInfo checkQrCode(String code) {
  if (code.contains(":")) {
    code = code.split(":")[1].toLowerCase();
  }

  QrInfo info = QrInfo();
  info.layer = PaymentLayer.unknown;
  info.address = code;

  if (code.startsWith("lnbc")) {
    info.network = Network.mainnet;
    info.layer = PaymentLayer.lightning;
    return info;
  } else if (code.startsWith("lntb")) {
    info.network = Network.testnet;
    info.layer = PaymentLayer.lightning;
  } else if (code.startsWith("lncrt")) {
    info.network = Network.regtest;
    info.layer = PaymentLayer.lightning;
  } else if (code.startsWith("1")) {
    info.network = Network.mainnet;
    info.layer = PaymentLayer.onchain;
    info.btcAddressType = BitcoindAddressType.p2pkh;
  } else if (code.startsWith("3")) {
    info.network = Network.mainnet;
    info.layer = PaymentLayer.onchain;
    info.btcAddressType = BitcoindAddressType.p2sh;
  } else if (code.startsWith("bc1")) {
    info.network = Network.mainnet;
    info.layer = PaymentLayer.onchain;
    info.btcAddressType = BitcoindAddressType.bech32;
  } else if (code.startsWith("m")) {
    info.network = Network.testnet;
    info.layer = PaymentLayer.onchain;
    info.btcAddressType = BitcoindAddressType.p2pkh;
  } else if (code.startsWith("2")) {
    info.network = Network.testnet;
    info.layer = PaymentLayer.onchain;
    info.btcAddressType = BitcoindAddressType.p2sh;
  } else if (code.startsWith("tb1")) {
    info.network = Network.testnet;
    info.layer = PaymentLayer.onchain;
    info.btcAddressType = BitcoindAddressType.bech32;
  }
  return info;
}

showSnackbar(BuildContext context, String message) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) async {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text(message)));
    },
  );
}

String fillString(text, {int powerOf = 4, String fillerChar = "="}) {
  int remainder = text.length % 4;
  if (remainder == 0) return text;
  String fillText = "";
  for (int i = 0; i < (powerOf - remainder); i++) fillText += fillerChar;
  return "$text$fillText";
}

String getMemoFromPaymentRequst(String req) {
  Bolt11PaymentRequest r = Bolt11PaymentRequest(req);
  if (r.tags.length > 1 && r.tags[1].type == "description") {
    return r.tags[1].data;
  } else {
    r.tags.forEach((tag) {
      if (tag.type == "description") return tag.data;
    });
  }
  return "";
}
