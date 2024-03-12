import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test/services/color_service/random_color_service.dart';

void main() {
  final colorService = RandomColorService();
  group('Random color service test', () {
    test('getColor should return a valid Color', () {
      final color = colorService.getColor();
      expect(color, isA<Color>());
    });

    test('getContrastTextColor should return valid contrast color', () {
      final contrastColorForBlack =
          colorService.getContrastTextColor(backgroundColor: Colors.black);
      final contrastColorForWhite =
          colorService.getContrastTextColor(backgroundColor: Colors.white);

      expect(contrastColorForBlack, Colors.white);
      expect(contrastColorForWhite, Colors.black);
    });
  });
}
