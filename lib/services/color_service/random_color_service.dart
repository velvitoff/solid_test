import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solid_test/services/color_service/color_service_interface.dart';

/// Implementation of Color Service that provides random color for getColor()
class RandomColorService implements ColorServiceInterface {
  final _random = Random();
  static const _maxU8 = 255;
  static const _textBrightnessTreshold = 70;

  @override
  Color getColor() {
    return Color.fromRGBO(
      _random.nextInt(_maxU8),
      _random.nextInt(_maxU8),
      _random.nextInt(_maxU8),
      1,
    );
  }

  @override
  Color getContrastTextColor({required Color backgroundColor}) {
    final grayscale =
        (backgroundColor.red + backgroundColor.green + backgroundColor.blue) /
            3;

    return grayscale > _textBrightnessTreshold ? Colors.black : Colors.white;
  }
}
