import 'package:flutter/material.dart';
import 'package:solid_test/get_it.dart';
import 'package:solid_test/services/color_service/color_service_interface.dart';

/// MainPage state model for provider
class MainPageState with ChangeNotifier {
  Color _backgroundColor = getIt.get<ColorServiceInterface>().getColor();

  /// Getter for background color
  Color get backgroundColor => _backgroundColor;

  /// Getter for text color. Is contrast to background color
  Color get textColor => getIt
      .get<ColorServiceInterface>()
      .getContrastTextColor(backgroundColor: _backgroundColor);

  /// Changes background color according to provided service
  void changeBackgroundColor() {
    _backgroundColor = getIt.get<ColorServiceInterface>().getColor();
    notifyListeners();
  }
}
