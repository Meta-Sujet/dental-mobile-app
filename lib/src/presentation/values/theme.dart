import 'app_theme_extension.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    splashFactory: NoSplash.splashFactory,
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xFFEDEFF4),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      hintStyle: TextStyle(color: Color(0xFFBCC3CF)),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: const Color(0xFF4AC1E0),
        textStyle: TextStyle(fontSize: 15),
      ),
    ),
    extensions: [
      CustomColors(secondaryElement: Color(0xFF78818F)),
    ],
  );
}
