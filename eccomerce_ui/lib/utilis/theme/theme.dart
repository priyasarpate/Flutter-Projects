import 'package:eccomerce_ui/utilis/theme/custom_themes/elevated_button_theme.dart';
import 'package:eccomerce_ui/utilis/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme ._();

static ThemeData lightTheme = ThemeData(
  useMaterial3: true,
 // fontFamily: popins, (we dont have fonts defined yet)
 brightness: Brightness.light,
 primaryColor: Colors.lightBlue,
 scaffoldBackgroundColor: Colors.white,
 textTheme: TTextTheme.lightTextTheme,
 elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
);
static ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  // fontFamily: popins, (we dont have fonts defined yet)
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TTextTheme.darkTextTheme,
  elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,

);
}