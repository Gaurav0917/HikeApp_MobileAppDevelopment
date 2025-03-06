import 'package:assignmentfinal/features/auth/presentation/view/auth_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test AuthRegister Widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: AuthRegister(),
      ),
    );

    expect(find.text('UserName'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);

    await tester.enterText(find.byKey(const Key('username_field')), 'TestUser');
    await tester.enterText(
        find.byKey(const Key('email_field')), 'test@example.com');
    await tester.enterText(
        find.byKey(const Key('password_field')), 'testpassword');

    await tester.tap(find.text('Sign Up'));

    await tester.pumpAndSettle();
  });
}
