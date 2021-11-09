import 'dart:math';
import 'package:flutter/material.dart';

MaterialColor generateMaterialColor(Color color) {
  return MaterialColor(color.value, {
    50: tintColor(color, 0.9),
    100: tintColor(color, 0.8),
    200: tintColor(color, 0.6),
    300: tintColor(color, 0.4),
    400: tintColor(color, 0.2),
    500: color,
    600: shadeColor(color, 0.1),
    700: shadeColor(color, 0.2),
    800: shadeColor(color, 0.3),
    900: shadeColor(color, 0.4),
  });
}

Color shadeColor(Color color, double factor) => Color.fromRGBO(
    shadeValue(color.red, factor),
    shadeValue(color.green, factor),
    shadeValue(color.blue, factor),
    1);

int shadeValue(int value, double factor) =>
    max(0, min(value - (value * factor).round(), 255));

Color tintColor(Color color, double factor) => Color.fromRGBO(
    tintValue(color.red, factor),
    tintValue(color.green, factor),
    tintValue(color.blue, factor),
    1);

int tintValue(int value, double factor) =>
    max(0, min((value + ((255 - value) * factor)).round(), 255));

final ThemeData theme = ThemeData(
  primarySwatch: generateMaterialColor(Palette.primary),
);

class Palette {
  static const Color primary = Color(0xFF2F4D7D);
  static const Color notWhite = Color(0xFFEDF0F2);
  static const secondaryColor = Color(0xFF2A2D3E);
  static const bgColor = Color(0xFF212332);
  static const Color nearlyWhite = Color(0xFFFEFEFE);

}

var lightThemeData = ThemeData(
  primarySwatch: generateMaterialColor(Colors.black),
  cardColor: Colors.blueGrey[50],
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.black
  ),
  primaryIconTheme: IconThemeData(color: Colors.black),
  primaryColor: Colors.white,
  primaryTextTheme: TextTheme(
    button: TextStyle(
      color: Colors.black,
    ),
    subtitle2: TextStyle(
      color: Colors.black,
    ),
    subtitle1: TextStyle(
      color: Colors.black,
    ),
    headline1: TextStyle(color: Colors.black),
  ),
  bottomAppBarColor: Colors.blueGrey[900],
  iconTheme: IconThemeData(color: Colors.black),
  brightness: Brightness.light,
);

var darkThemeData = ThemeData(
  primarySwatch: generateMaterialColor(Colors.white),
  primaryColor: Colors.black,
  primaryIconTheme: IconThemeData(color: Colors.white),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.white
  ),
  cardColor: Colors.black,
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal
  ),
  primaryTextTheme: TextTheme(
    button: TextStyle(
      color: Colors.white,
    ),
    subtitle2: TextStyle(
      color: Colors.white,
    ),
    subtitle1: TextStyle(
      color: Colors.white,
    ),
    headline1: TextStyle(
      color: Colors.white70,
    ),
  ),
  bottomAppBarColor: Colors.black,
  iconTheme: IconThemeData(color: Colors.white),
  brightness: Brightness.dark,
);
