import 'package:flutter/material.dart';

/// Public interface for Color Services
abstract interface class ColorServiceInterface {
  /// Returns a color according to its implementation
  Color getColor();

  /// Returns a contrast color for the given background color
  Color getContrastTextColor({required Color backgroundColor});
}
