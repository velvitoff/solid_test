// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test/main.dart';

void main() {
  //TO DO: There is a chance RandomColorService will return the same color twice
  testWidgets('Main() widget color change test', (WidgetTester tester) async {
    await tester.pumpWidget(const Main());

    final scaffoldFinder = find.byType(Scaffold);
    final scaffold = tester.firstWidget(find.byType(Scaffold)) as Scaffold;
    final currentColor = scaffold.backgroundColor;

    await tester.tap(scaffoldFinder);
    await tester.pump();

    final scaffoldAfterTap =
        tester.firstWidget(find.byType(Scaffold)) as Scaffold;
    final currentColorAfterTap = scaffoldAfterTap.backgroundColor;

    expect(currentColorAfterTap, isNot(equals(currentColor)));
  });
}
