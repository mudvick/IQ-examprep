import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryBlue = Color(0xFF0B3D91);
  static const Color gold = Color(0xFFFFC107);
  static const Color background = Colors.white;
  static const Color textDark = Color(0xFF222222);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryBlue,
    scaffoldBackgroundColor: background,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryBlue,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
      ),
    ),
  );
}