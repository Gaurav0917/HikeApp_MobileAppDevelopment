import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:assignmentfinal/features/auth/presentation/view/auth_login.dart';

void main() {
  testWidgets('Test AuthLogin Widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AuthLogin(),
      ),
    );

    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Sign In'), findsOneWidget);
  });
}
