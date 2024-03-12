import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_test/states/main_page_state.dart';

/// Text widget that displays "Hello there".
/// Its font size is automatically adapted to screen width
class HelloThereWidget extends StatelessWidget {
  /// Text widget Constructor
  const HelloThereWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final color =
        context.select<MainPageState, Color>((model) => model.textColor);

    return Text(
      "Hello there",
      style: TextStyle(color: color, fontSize: width / 10),
    );
  }
}
