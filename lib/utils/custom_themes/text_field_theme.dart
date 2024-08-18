import 'package:flutter/material.dart';

class LTextFormFieldTheme {
  LTextFormFieldTheme._();

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.grey[400]),
    isDense: true,
    filled: true,
    fillColor: Colors.white.withOpacity(0.08),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
  );
}