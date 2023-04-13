import 'package:color_generator/features/home/components/home_text.dart';
import 'package:color_generator/features/home/view_model/color_cubit.dart';
import 'package:color_generator/features/home/view_model/colors_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// The class of [AnimatedBody] which animated smoothly
class AnimatedBody extends StatelessWidget {
  /// This the constructor of [AnimatedBody]
  const AnimatedBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorsState>(
      builder: (context, state) {
        final ColorCubit cubit = ColorCubit.of(context);

        return GestureDetector(
          onTap: cubit.changeColor,
          child: AnimatedContainer(
            alignment: Alignment.center,
            constraints: const BoxConstraints.expand(),
            duration: const Duration(milliseconds: 500),
            color: state.currentColor,
            child: const HomeText(),
          ),
        );
      },
    );
  }
}
