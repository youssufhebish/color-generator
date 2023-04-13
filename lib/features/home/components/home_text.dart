import 'package:color_generator/features/home/view_model/color_cubit.dart';
import 'package:color_generator/features/home/view_model/colors_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This is The home text of HomeScreen
class HomeText extends StatelessWidget {
  /// This is the constructor of HomeScreen
  const HomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorCubit, ColorsState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Text(
            'Hello There',
            key: UniqueKey(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: state.textColor,
            ),
          ),
        );
      },
    );
  }
}
