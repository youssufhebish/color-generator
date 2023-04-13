import 'package:flutter/material.dart';

/// The state class for ColorCubit
class ColorsState {
  /// The color of Text
  ///
  /// The inverted of background color which used to be for text
  ///
  /// I also tried to make the text color block or white
  /// depending on .computeLuminance()
  /// - when > 0.5 => textColor = Colors.black
  /// - when < 0.5 => textColor = Colors.white
  ///
  /// But the result wasn't perfect
  final Color textColor;

  /// The previous background color
  final Color prevColor;

  /// The current backgroundColor
  final Color currentColor;

  /// This is the constructor of [ColorsState]
  const ColorsState({
    required this.textColor,
    required this.prevColor,
    required this.currentColor,
  });
}
