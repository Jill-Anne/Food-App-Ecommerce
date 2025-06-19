import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/gradient_themes.dart/app_gradient.dart';
import 'package:mesh_gradient/mesh_gradient.dart';





class GradientSurface extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;

  const GradientSurface({
    Key? key,
    required this.child,
    this.padding = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: padding,
      child: AnimatedMeshGradient(
        colors: const [
          Color(0xffbbd2c5), // Light color from your static gradient
          Color(0xff536976), // Dark color from your static gradient
          // Optionally, you can add slight variations for smoother animation:
          Color(0xffa9c1b6), // slightly darker light color
          Color(0xff4a5a67), // slightly lighter dark color
        ],
        options: AnimatedMeshGradientOptions(
          speed: 0.3,        // slow animation speed
          frequency: 2.0,    // wave ripples frequency
          amplitude: 0.3,    // wave amplitude
          grain: 0.2,        // subtle grain texture
        ),
        child: child,
      ),
    );
  }
}
