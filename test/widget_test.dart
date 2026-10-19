import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wisata_candi/main.dart';

void main() {
  testWidgets('Wisata Candi Detail Screen interactive smoke test', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(500, 1000);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    await tester.pumpWidget(const MyApp());
    await tester.pump();

    // Verify back button
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);

    // Verify favorite toggle
    expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    await tester.tap(find.byIcon(Icons.favorite_border));
    await tester.pump();
    expect(find.byIcon(Icons.favorite), findsOneWidget);

    // Verify description toggle
    expect(find.text('Baca selengkapnya...'), findsOneWidget);
    await tester.tap(find.text('Baca selengkapnya...'));
    await tester.pump();
    expect(find.text('Tutup selengkapnya'), findsOneWidget);
  });
}
