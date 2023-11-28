import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UIMethods {
  static void setStatusBarColor(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).colorScheme.background,
      statusBarIconBrightness: Theme.of(context).colorScheme.brightness == Brightness.dark
          ? Brightness.light
          : Brightness.dark,
    ));
  }
}
