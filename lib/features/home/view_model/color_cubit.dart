import 'dart:math';
import 'package:color_generator/features/home/view_model/colors_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// This is the color cubit class which used to control the color
class ColorCubit extends Cubit<ColorsState> {
  final _random = Random();
  final int _randomConst = 256;

  /// Constructor of cubit class which have the init state as white
  ColorCubit()
      : super(
          const ColorsState(
            textColor: Colors.black,
            prevColor: Colors.white,
            currentColor: Colors.white,
          ),
        );

  /// This the method which used to access Color cubit
  static ColorCubit of(BuildContext context) => BlocProvider.of(context);

  /// This the method which used to create the color
  void changeColor() {
    final int r = _random.nextInt(_randomConst);
    final int b = _random.nextInt(_randomConst);
    final int g = _random.nextInt(_randomConst);
    final color = Color.fromRGBO(
      r,
      b,
      g,
      1.0,
    );
    final textColor = Color.fromRGBO(
      _randomConst - r,
      _randomConst - b,
      _randomConst - g,
      1.0,
    );
    emit(
      ColorsState(
        textColor: textColor,
        prevColor: state.currentColor,
        currentColor: color,
      ),
    );
  }
}
