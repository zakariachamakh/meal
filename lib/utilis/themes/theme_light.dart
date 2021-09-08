import 'package:flutter/material.dart';
import 'package:meal_monkey/utilis/themes/text_theme/text_theme_data.dart';

import 'botton_theme/theme_button.dart';

ThemeData myTheme = ThemeData(
  textTheme: textTheme,
  buttonTheme: buttonThemeData,
  primarySwatch: Colors.red,
  brightness: Brightness.light,
  primaryColor: Color(0xfff44336),
  primaryColorBrightness: Brightness.dark,
  primaryColorLight: Color(0xffffcdd2),
  primaryColorDark: Color(0xffd32f2f),
  accentColor: Color(0xfff44336),
  accentColorBrightness: Brightness.dark,
  canvasColor: Color(0xfffafafa),
  scaffoldBackgroundColor: Color(0xfffafafa),
  bottomAppBarColor: Color(0xffffffff),
  cardColor: Color(0xffffffff),
  dividerColor: Color(0x1f000000),
  highlightColor: Color(0x66bcbcbc),
  splashColor: Color(0x66c8c8c8),
  selectedRowColor: Color(0xfff5f5f5),
  unselectedWidgetColor: Color(0x8a000000),
  disabledColor: Color(0x61000000),
  buttonColor: Color(0xffe0e0e0),
  toggleableActiveColor: Color(0xffe53935),
  secondaryHeaderColor: Color(0xffffebee),
  backgroundColor: Color(0xffef9a9a),
  dialogBackgroundColor: Color(0xffffffff),
  indicatorColor: Color(0xfff44336),
  hintColor: Color(0x8a000000),
  errorColor: Color(0xffd32f2f),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: Color(0xff4285f4),
    selectionColor: Color(0xffef9a9a),
    selectionHandleColor: Color(0xffe57373),
  ),
);
