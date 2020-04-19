import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:flutter/material.dart';

import 'main.dart' as m;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  m.main();
}
