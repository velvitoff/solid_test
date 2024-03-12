import 'package:solid_test/get_it.dart';

import 'service_tests/random_color_service.dart' as random_color_service;
import 'widget_tests/main_page.dart' as main_page;

void main() {
  getItSetup();
  main_page.main();
  random_color_service.main();
}
