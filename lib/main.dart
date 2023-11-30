import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:voxify/providers/theme_state_manager.dart';
import 'package:voxify/screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeStateManager(context),
      builder: (context, child) {
        var themeStateManager = Provider.of<ThemeStateManager>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeStateManager.currentTheme,
          themeMode: ThemeMode.system,
          initialRoute: '/',
          routes: {
            '/': (context) => const Onboarding(),
          },
        );
      },
    );
  }
}
