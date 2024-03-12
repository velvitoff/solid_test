import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solid_test/states/main_page_state.dart';
import 'package:solid_test/widgets/hello_there_widget.dart';

/// Main page of the app
class MainPage extends StatelessWidget {
  /// Main page constructor
  const MainPage({super.key});

  /// A function to be called on background tap, handles color change
  void onBackgroundTap(BuildContext context) {
    context.read<MainPageState>().changeBackgroundColor();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainPageState(),
      child: Builder(
        builder: (context) {
          final color = context
              .select<MainPageState, Color>((model) => model.backgroundColor);

          return Scaffold(
            backgroundColor: color,
            body: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => onBackgroundTap(context),
              child: const Center(
                child: HelloThereWidget(),
              ),
            ),
          );
        },
      ),
    );
  }
}
