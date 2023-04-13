import 'package:color_generator/features/home/components/my_clipper.dart';
import 'package:flutter/material.dart';

/// This is the class which build the Animated Clip
class AnimatedClipWidget extends StatelessWidget {
  /// The start point of animation
  final Offset startPoint;

  /// The color of the widget
  final Color containerColor;

  /// The animation controller
  final AnimationController animationController;

  /// This is the [AnimatedClipWidget] constructor
  const AnimatedClipWidget({
    required this.startPoint,
    required this.containerColor,
    required this.animationController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) {
        return ClipPath(
          clipper: MyClipper(
            startPoint: startPoint,
            progress: animationController.value,
          ),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: containerColor,
          ),
        );
      },
    );
  }
}
