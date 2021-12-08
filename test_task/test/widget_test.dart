// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_task/main.dart';

void main() {
  testWidgets('Checking text test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: TestApp()));

    // Verify that our text is on the screen.
    expect(find.text('Prev.'), findsOneWidget);
    expect(find.text('Hey there'), findsOneWidget);
    expect(find.text('Previous'), findsNothing);
    expect(find.text('Hey hey hey'), findsNothing);

    // Tap the buttons.
    await tester.tap(find.text('Hey there'));
    await tester.pump();
    await tester.tap(find.text('Prev.'));
    await tester.pump();
  });
}
