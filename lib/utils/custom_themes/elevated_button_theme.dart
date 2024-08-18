import 'package:flutter/material.dart';

class LElevatedButtonTheme {
  LElevatedButtonTheme._();

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.white.withOpacity(0.5),
      disabledBackgroundColor: Colors.blue.withOpacity(0.5),
      // fixedSize: Size(double.infinity, 60),
      // side: const BorderSide(color: LColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 12),
      // textStyle: const TextStyle(fontSize: 16, color: LColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}