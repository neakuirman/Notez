import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notez/main.dart';

void main() {
  testWidgets('UnderConstructionPage renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Notez'), findsOneWidget);
    expect(find.textContaining('under development'), findsOneWidget);
    expect(find.textContaining('Muhammad Anus Kugul'), findsOneWidget);
    expect(find.textContaining('Irman'), findsOneWidget);
  });
}