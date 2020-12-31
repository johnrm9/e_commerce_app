import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData buildThemeData() => ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Muli',
      appBarTheme: _appBarTheme(),
      textTheme: _textTheme(),
      inputDecorationTheme: _inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

InputDecorationTheme _inputDecorationTheme() {
  final OutlineInputBorder _outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: _outlineInputBorder,
    focusedBorder: _outlineInputBorder,
    border: _outlineInputBorder,
  );
}

TextTheme _textTheme() => const TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    );

AppBarTheme _appBarTheme() => const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline6: TextStyle(color: Color(0xFF8B8B8B), fontSize: 18),
      ),
    );
