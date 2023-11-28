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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: custom_theme.Theme.lightTheme,
      darkTheme: custom_theme.Theme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const Onboarding(),
      },
    );
  }
}
