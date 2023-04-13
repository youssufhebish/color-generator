import 'package:color_generator/features/home/components/animated_clip_widget.dart';
import 'package:color_generator/features/home/components/home_text.dart';
import 'package:color_generator/features/home/view_model/color_cubit.dart';
import 'package:color_generator/features/home/view_model/colors_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This is the Body of HomeScreen
class AnimatedCircleBody extends StatefulWidget {
  /// This the constructor of HomeBody
  const AnimatedCircleBody({Key? key}) : super(key: key);

  @override
  State<AnimatedCircleBody> createState() => _AnimatedCircleBodyState();
}

class _AnimatedCircleBodyState extends State<AnimatedCircleBody>
    with SingleTickerProviderStateMixin {
  Offset offset = Offset.zero;

  // ignore: avoid-late-keyword
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorsState>(
      builder: (context, state) {
        final ColorCubit cubit = ColorCubit.of(context);

        return GestureDetector(
          onTapDown: (TapDownDetails details) {
            cubit.changeColor();
            animationController.forward(from: 0.0);
            offset = details.globalPosition;
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: state.prevColor,
              ),
              AnimatedClipWidget(
                animationController: animationController,
                containerColor: state.currentColor,
                startPoint: offset,
              ),
              const HomeText(),
            ],
          ),
        );
      },
    );
  }
}
