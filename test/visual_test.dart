import 'dart:io';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wisata_candi/main.dart';

void main() {
  testWidgets('Capture visual screenshot of DetailScreen Header', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(400, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(() {
      tester.view.resetPhysicalSize();
      tester.view.resetDevicePixelRatio();
    });

    final key = GlobalKey();

    await tester.pumpWidget(
      RepaintBoundary(
        key: key,
        child: const MyApp(),
      ),
    );
    await tester.pump();

    await tester.runAsync(() async {
      final boundary = key.currentContext!.findRenderObject() as RenderRepaintBoundary;
      final ui.Image image = await boundary.toImage(pixelRatio: 1.0);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      final pngBytes = byteData!.buffer.asUint8List();

      final file = File('screenshot_detail_screen.png');
      await file.writeAsBytes(pngBytes);
    });
  });
}
