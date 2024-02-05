import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hovastore/screens/mobile/confirm_transaction.dart';

void main() {
  testWidgets('ConfirmTransaction widget test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ConfirmTransaction()));

    expect(find.byType(Scaffold), findsOneWidget);

    expect(find.text('CONFIRM TRANSACTION'), findsOneWidget);

    expect(find.byIcon(Icons.keyboard_backspace_outlined), findsOneWidget);

    expect(find.text('CLEAR'), findsOneWidget);

    expect(find.text("Amata y'inyange 1L"), findsOneWidget);

    expect(find.text('CUSTOMER'), findsOneWidget);

    expect(find.text('PAYMENT METHOD'), findsOneWidget);

    expect(find.text('Confirm Transaction'), findsOneWidget);
  });
}
