import 'dart:math';

import 'package:flutter/material.dart';

/// This is the class which build the custom clipper
class MyClipper extends CustomClipper<Path> {
  /// This is the start point of the custom clipper
  final Offset startPoint;

  /// This is the progress of the custom clipper
  final double progress;

  /// This is the constructor of [MyClipper] class
  MyClipper({
    required this.startPoint,
    required this.progress,
  });

  @override
  Path getClip(Size size) {
    final Path path = Path();

    /// To Make the radius of the circle
    /// as long as the radius of the full screen
    final double hypotenuse = sqrt(pow(size.width, 2) + pow(size.height, 2));

    path.addOval(
      Rect.fromCircle(
        center: startPoint,
        radius: hypotenuse * progress,
      ),
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
