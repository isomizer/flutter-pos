import 'package:flutter/material.dart';

import '../../../../gen/colors.gen.dart';

const defaultLetterSpacing = 0.03;
const mediumLetterSpacing = 0.04;
const largeLetterSpacing = 1.0;

final ThemeData defaultTheme = ThemeData(
    primarySwatch: ColorName.colorPrimarySwatch,
    scaffoldBackgroundColor: ColorName.backgroundColor,
    fontFamily: 'Muli',
    appBarTheme: const AppBarTheme(
      color: ColorName.backgroundColor,
      iconTheme: IconThemeData(color: ColorName.black),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: ColorName.black,
      disabledColor: ColorName.primaryColorDark,
    ),
    textTheme: _buildTextTheme());

TextTheme _buildTextTheme() {
  return const TextTheme(
    headline1: TextStyle(
      fontWeight: FontWeight.w400,
    ),
    headline2: TextStyle(
      fontWeight: FontWeight.w700,
    ),
    headline3: TextStyle(
      fontWeight: FontWeight.w900,
    ),
    headline4: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20.0,
      color: ColorName.black,
    ),
    headline5: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16.0,
    ),
    headline6: TextStyle(
      fontWeight: FontWeight.w700,
    ),
    subtitle1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    subtitle2: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12,
    ),
    bodyText1: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
    ),
    bodyText2: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 13,
      color: ColorName.black,
    ),
    button: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 13,
    ),
    caption: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
    overline: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 12,
    ),
  );
}
