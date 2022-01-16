import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor appColor =
      MaterialColor(_appColorPrimaryValue, <int, Color>{
    50: Color(0xFFFEECEB),
    100: Color(0xFFFDCFCC),
    200: Color(0xFFFBAFAA),
    300: Color(0xFFF98F88),
    400: Color(0xFFF8776F),
    500: Color(_appColorPrimaryValue),
    600: Color(0xFFF6574E),
    700: Color(0xFFF54D44),
    800: Color(0xFFF3433B),
    900: Color(0xFFF1322A),
  });
  static const int _appColorPrimaryValue = 0xFFF75F55;

  static const MaterialColor appColorAccent =
      MaterialColor(_appColorAccentValue, <int, Color>{
    100: Color(0xFFFFFFFF),
    200: Color(_appColorAccentValue),
    400: Color(0xFFFFCBC9),
    700: Color(0xFFFFB3B0),
  });
  static const int _appColorAccentValue = 0xFFFFFDFC;
}
