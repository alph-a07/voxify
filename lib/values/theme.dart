import 'package:flutter/material.dart';

class Theme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Bungee',
        fontSize: 32,
        letterSpacing: 5,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.light,
      background: const Color.fromARGB(255, 254, 247, 255),
    ),
    fontFamily: 'Lato',
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Bungee',
        fontSize: 32,
        letterSpacing: 5,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.deepPurple,
      brightness: Brightness.dark,
      background: const Color.fromARGB(255, 31, 25, 37),
    ),
    fontFamily: 'Lato',
  );
}
