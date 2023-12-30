// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_book_chap5_q202/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
 

 
void main() {
  testWidgets('Custom Shape Drawing Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home:CustomPaintedShape() ));
 
    // Verify CustomPaint is used
    expect(
        find.descendant(
            of: find.byType(SizedBox), matching: find.byType(CustomPaint)),
        findsOneWidget);
 
    // Test for the initial color of the shape
    final CustomPaint customPaint = tester.widget(find.descendant(
        of: find.byType(SizedBox), matching: find.byType(CustomPaint))); //make sure you put the CustomPaint widget inside a SizedBox in your code
    final TrianglePainter painter = customPaint.painter as TrianglePainter;
    expect(painter.color, Colors.red); //replace initialColor with whatever color you are painting the shape in
 
    // Interact with UI to change color and test the updated color
    // This part of the test depends on how the color change is implemented (e.g., tapping a button)
    // For example:
    // await tester.tap(find.byIcon(Icons.color_change)); // Replace with your actual UI interaction
    // await tester.pump();
    // expect(painter.color, Colors.newColor); // Replace 'newColor' with the expected new color
  });
}
