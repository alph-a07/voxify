import 'package:flutter/material.dart';
import 'package:voxify/values/colors.dart';

class ThemeStateManager extends ChangeNotifier {
  late BuildContext context;
  late double _width;
  late double _height;

  ThemeStateManager(this.context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    _currentTheme = darkTheme;
  }

  ThemeData get lightTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Bungee',
            fontSize: 0.03 * _height,
            letterSpacing: 2,
          ),
          displayMedium: TextStyle(
            fontSize: 0.03 * _height,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontSize: 0.0125 * _height,
            fontWeight: FontWeight.w400,
            color: MyColors.lightTextSecondary,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
          background: MyColors.lightBackground,
        ),
        fontFamily: 'Inter',
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => MyColors.lightAccent,
            ),
            minimumSize: MaterialStateProperty.resolveWith(
              (states) => Size.fromHeight(
                0.05 * _height,
              ),
            ),
          ),
        ),
      );

  ThemeData get darkTheme => ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            fontFamily: 'Bungee',
            fontSize: 0.03 * _height,
            letterSpacing: 2,
          ),
          displayMedium: TextStyle(
            fontSize: 0.03 * _height,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontSize: 0.0125 * _height,
            fontWeight: FontWeight.w400,
            color: MyColors.darkTextSecondary,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
          background: MyColors.darkBackground,
        ),
        fontFamily: 'Inter',
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
              (states) => MyColors.darkAccent,
            ),
            foregroundColor: MaterialStateColor.resolveWith(
              (states) => MyColors.darkText,
            ),
            minimumSize: MaterialStateProperty.resolveWith(
              (states) => Size.fromHeight(
                0.05 * _height,
              ),
            ),
          ),
        ),
      );

  late ThemeData _currentTheme;
  ThemeMode _currentThemeMode = ThemeMode.system;

  ThemeData get currentTheme => _currentTheme;
  double get width => _width;
  double get height => _height;

  void setThemeMode(ThemeMode mode) {
    _currentThemeMode = mode;

    if (_currentThemeMode == ThemeMode.light) {
      _currentTheme = lightTheme;
    } else if (_currentThemeMode == ThemeMode.dark) {
      _currentTheme = darkTheme;
    } else {
      _currentTheme =
          Theme.of(context).colorScheme.brightness == Brightness.dark ? darkTheme : lightTheme;
    }

    notifyListeners();
  }
}
