import 'package:flutter/material.dart';

// @WidgetbookTheme(name: 'Light', isDefault: true)
ThemeData getLightTheme() => ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color(0XFF30343F),
        ),
        displayLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        displayMedium: TextStyle(
          fontSize: 14,
          color: Color(0XFF30343F),
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headlineMedium: TextStyle(
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          fontSize: 14,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
        ),
      ),
    );
