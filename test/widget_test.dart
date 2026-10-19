import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:wisata_candi/main.dart';

void main() {
  testWidgets('Wisata Candi Detail Header smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the back button icon exists in DetailHeader
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
  });
}
