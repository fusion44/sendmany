import 'package:flutter/material.dart';
import 'package:sendmany/common/constants.dart';

class SendManyLogoHeroWidget extends StatelessWidget {
  const SendManyLogoHeroWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Currently there is a bug in Flare that doesn't display the logo correctly.
    // Use a static version until the bug is fixed: https://github.com/2d-inc/support/issues/221
    return Hero(
      tag: heroTagSendManyLogo,
      child: Image.asset('assets/logo_static.png'),
    );
  }
}
