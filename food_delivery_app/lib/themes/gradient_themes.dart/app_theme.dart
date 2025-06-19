// lib/theme/app_theme.dart
import 'package:flutter/material.dart';

//LIGHT THEME TO IMPLEMENT
ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Poppins',
  colorScheme: ColorScheme.light(
    surface: Colors.grey.shade200, // Fallback solid color
    primary: Color(0xFF003366),
    secondary: Color(0xFF0059b3),
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade800,
  ),
);
