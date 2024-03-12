import 'package:get_it/get_it.dart';
import 'package:solid_test/services/color_service/color_service_interface.dart';
import 'package:solid_test/services/color_service/random_color_service.dart';

/// getIt instance declaration
final GetIt getIt = GetIt.instance;

/// Setup of getIt, has to be called in main() before runApp()
void getItSetup() {
  getIt.registerSingleton<ColorServiceInterface>(RandomColorService());
}
