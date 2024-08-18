import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/custom_themes/appbar_theme.dart';
import 'package:instagram_clone/utils/custom_themes/elevated_button_theme.dart';
import 'package:instagram_clone/utils/custom_themes/text_field_theme.dart';

class LAppTheme {
  LAppTheme._();

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'sans',
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
    appBarTheme: LAppBarTheme.darkAppBartheme,
    scaffoldBackgroundColor: Colors.black,
    inputDecorationTheme: LTextFormFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: LElevatedButtonTheme.darkElevatedButtonTheme
  );
}