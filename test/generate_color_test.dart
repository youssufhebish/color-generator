import 'package:color_generator/features/home/view_model/color_cubit.dart';
import 'package:color_generator/features/home/view_model/colors_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColorCubit', () {
    // ignore: avoid-late-keyword
    late ColorCubit colorCubit;

    setUp(() {
      colorCubit = ColorCubit();
    });

    test('initial state is correct', () {
      expect(
        colorCubit.state,
        const ColorsState(
          textColor: Colors.black,
          prevColor: Colors.white,
          currentColor: Colors.white,
        ),
      );
    });

    test('changeColor changes the current color', () {
      final initialColor = colorCubit.state.currentColor;

      colorCubit.changeColor();

      expect(
        colorCubit.state.currentColor,
        isNot(equals(initialColor)),
      );
    });

    test('changeColor changes the previous color', () {
      final initialColor = colorCubit.state.currentColor;

      colorCubit.changeColor();

      expect(
        colorCubit.state.prevColor,
        equals(initialColor),
      );
    });

    test('changeColor changes the text color', () {
      final initialColor = colorCubit.state.textColor;

      colorCubit.changeColor();

      expect(
        colorCubit.state.textColor,
        isNot(equals(initialColor)),
      );
    });
  });
}
