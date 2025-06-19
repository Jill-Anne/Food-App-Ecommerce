import 'package:flutter/material.dart';

class AppGradients {
  static const Gradient surfaceGradient = LinearGradient(
    colors: [
      Color(0xffbbd2c5), // Light color
      Color(0xff536976), // Dark color
    ],
    stops: [0, 1],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
