import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class MyTheme {
  static const Map<String, Color> colors = {
    "accentColor": Color(0xfffdf2e1),
    "accentColorLight": Color(0x90fdf2e1),
    "onPrimaryDark": Color(0xff212121),
    "onPrimaryLight": Colors.white,
    "cardDark": Color(0xff101010),
    "cardLight": Color(0xfffdf2e1),
    "iconThemeLight": Colors.black54
  };

  //  app in light theme
  static final lightTheme = ThemeData(
      primaryColor: colors["accentColor"],
      primaryColorDark: colors["cardLight"], // for the cards
      scaffoldBackgroundColor: colors["onPrimaryLight"],
      iconTheme: IconThemeData(color: colors["iconThemeLight"]),
      fontFamily: "Poppins",
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: "Poppins",
            fontSize: 26),
        titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontFamily: "Poppins",
            fontSize: 20),
        titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontFamily: "Poppins",
            fontSize: 18),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: "Poppins",
            color: Colors.black87),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            fontFamily: "Poppins",
            color: Colors.black87),
        bodySmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            fontFamily: "Poppins",
            color: Colors.black87),
      )
  );

  //  app in dark theme
  static final darkTheme = ThemeData(
      primaryColor: colors["accentColor"],
      primaryColorDark: colors["cardDark"], // for the cards
      scaffoldBackgroundColor: colors["onPrimaryDark"],
      iconTheme: IconThemeData(color: colors["accentColor"]),
      fontFamily: "Poppins",
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 26),
        titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 22),
        titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 18),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: "Poppins",
            color: Colors.white),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            fontFamily: "Poppins",
            color: Colors.white70),
        bodySmall: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
            fontFamily: "Poppins",
            color: Colors.white70),
      ));
}
