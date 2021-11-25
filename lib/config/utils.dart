import 'package:flutter/material.dart';

class Utils {
  static Widget verticalSpacer({double space = 16.0}) {
    return SizedBox(height: space);
  }

  static Widget horizontalSpacer({double space = 16.0}) {
    return SizedBox(width: space);
  }
}
