import 'package:flutter/material.dart';

ButtonThemeData buttonThemeData = ButtonThemeData(
  textTheme: ButtonTextTheme.normal,
  minWidth: 88,
  height: 36,
  padding: EdgeInsets.only(top: 0, bottom: 0, left: 16, right: 16),
  shape: RoundedRectangleBorder(
    side: BorderSide(
      color: Color(0xff000000),
      width: 0,
      style: BorderStyle.none,
    ),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  alignedDropdown: false,
  buttonColor: Color(0xffe0e0e0),
  disabledColor: Color(0x61000000),
  highlightColor: Color(0x29000000),
  splashColor: Color(0x1f000000),
  focusColor: Color(0x1f000000),
  hoverColor: Color(0x0a000000),
  colorScheme: ColorScheme(
    primary: Color(0xfff44336),
    primaryVariant: Color(0xffd32f2f),
    secondary: Color(0xfff44336),
    secondaryVariant: Color(0xffd32f2f),
    surface: Color(0xffffffff),
    background: Color(0xffef9a9a),
    error: Color(0xffd32f2f),
    onPrimary: Color(0xffffffff),
    onSecondary: Color(0xffffffff),
    onSurface: Color(0xff000000),
    onBackground: Color(0xffffffff),
    onError: Color(0xffffffff),
    brightness: Brightness.light,
  ),
);
