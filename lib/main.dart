import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:voxify/screens/onboarding.dart';
import '../values/theme.dart' as custom_theme;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).colorScheme.brightness == Brightness.light
            ? Colors.red
            : Colors.yellow,
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: custom_theme.Theme.lightTheme,
        darkTheme: custom_theme.Theme.darkTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => const Onboarding(),
        },
      ),
    );
  }
}
