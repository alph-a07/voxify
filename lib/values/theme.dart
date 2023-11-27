import 'package:flutter/material.dart';

class Theme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    textTheme: const TextTheme(
        displayLarge: TextStyle(
      fontFamily: 'Bungee',
      fontSize: 32,
      letterSpacing: 5,
    )),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.light,
    ),
    fontFamily: 'Lato',
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    textTheme: const TextTheme(
        displayLarge: TextStyle(
      fontFamily: 'Bungee',
      fontSize: 32,
      letterSpacing: 5,
    )),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
    ),
    fontFamily: 'Lato',
  );
}
