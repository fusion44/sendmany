import 'package:flutter/material.dart';
import 'package:torden/common/constants.dart';

class TordenLogoHeroWidget extends StatelessWidget {
  const TordenLogoHeroWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Currently there is a bug in Flare that doesn't display the logo correctly.
    // Use a static version until the bug is fixed: https://github.com/2d-inc/support/issues/221
    return Hero(
      tag: heroTagTordenLogo,
      child: Image.asset("assets/logo_static.png"),
    );
  }
}
