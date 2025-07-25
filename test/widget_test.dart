import 'package:flutter_test/flutter_test.dart';

import 'package:notez/main.dart'; // Pastikan ini sesuai dengan lokasi main.dart kamu

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that a widget with expected text appears.
    expect(find.text('This Aplication is under development'), findsOneWidget); // Ganti sesuai isi aplikasi kamu
  });
}
