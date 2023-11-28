import 'package:flutter/material.dart';
import '../values/colors.dart';

class Theme {
  late BuildContext context;
  static late double width;
  static late double height;

  Theme(this.context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Bungee',
        fontSize: 0.03 * height,
        letterSpacing: 2,
      ),
      displayMedium: TextStyle(
        fontSize: 0.03 * height,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontSize: 0.0125 * height,
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
            0.05 * height,
          ),
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      displayLarge: TextStyle(
        fontFamily: 'Bungee',
        fontSize: 0.03 * height,
        letterSpacing: 2,
      ),
      displayMedium: TextStyle(
        fontSize: 0.03 * height,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontSize: 0.0125 * height,
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
            0.05 * height,
          ),
        ),
      ),
    ),
  );
}
