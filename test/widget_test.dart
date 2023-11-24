// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:code_magic_failing_test_reproduction/summary_range_picker_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Should render the range if data is complete", (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SummaryRangePickerField(
            title: "SummaryRangePickerField",
            dates: ["1700620943351", "1703433600000"],
          ),
        ),
      ),
    );

    expect(find.text("SummaryRangePickerField"), findsOneWidget);

    expect(find.text("November 22, 2023 to December 25, 2023"), findsOneWidget);
  });
}
