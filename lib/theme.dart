import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  AppBarTheme appBarTheme() {
    return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      centerTitle: true,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Color(0xFF8B8B8B),
          fontSize: 18,
        ),
      ),
    );
  }

  TextTheme textTheme() {
    return TextTheme(
      bodyText1: TextStyle(color: kTextColor),
      bodyText2: TextStyle(color: kTextColor),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    OutlineInputBorder outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: kTextColor),
        gapPadding: 10,
      );

    return InputDecorationTheme(
      contentPadding:
          EdgeInsets.symmetric(horizontal: 45, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder,
    );
  }

  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Muli',
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
