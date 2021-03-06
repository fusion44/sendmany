class Validator {
  static final Validator _singleton = Validator._internal();
  Validator._internal();
  factory Validator() {
    return _singleton;
  }

  bool positiveInt(String i) {
    final _regex = RegExp(r'^([1-9]\d*|0)$');
    return _regex.hasMatch(i);
  }

  bool ip(String ip) {
    final _regex = RegExp(
      r'\b(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b',
    );

    return _regex.hasMatch(ip);
  }

  bool onionAddress(String address) {
    final _regex = RegExp(r'^([a-z2-7]{16}|[a-z2-7]{56})\.onion$');
    return _regex.hasMatch(address);
  }

  bool lnPubKey(String pubKey) {
    if (pubKey == null || pubKey.length != 66) return false;
    return true;
  }
}
