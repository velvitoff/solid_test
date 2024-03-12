import 'package:flutter/material.dart';
import 'package:solid_test/get_it.dart';
import 'package:solid_test/pages/main_page.dart';

void main() {
  getItSetup();
  runApp(const Main());
}

/// This widget is the root of the application.
class Main extends StatelessWidget {
  /// Default Main constructor
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solid Test',
      home: MainPage(),
    );
  }
}
