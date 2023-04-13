import 'package:color_generator/features/home/components/animated_circle_body.dart';
import 'package:color_generator/features/home/view_model/color_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This is HomeScreen class
class HomeScreen extends StatelessWidget {
  /// This is HomeScreen constructor
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ColorCubit>(
      create: (context) => ColorCubit(),
      child: const Scaffold(
        /// This is A widget with circle animation
        /// Also I made AnimatedBody widget which animates smoothly
        body: AnimatedCircleBody(),
      ),
    );
  }
}
