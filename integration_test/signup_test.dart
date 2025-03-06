import 'package:assignmentfinal/features/auth/presentation/view/auth_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test AuthRegister Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: AuthRegister()));

    // Add your test assertions here to verify if the register screen is displayed correctly.
    expect(find.text('UserName'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);

    // Enter username, email, and password in the TextFormField widgets.
    await tester.enterText(find.byKey(const Key('username_field')), 'TesstUser');
    await tester.enterText(
        find.byKey(const Key('email_field')), 'tesst@gmail.com');
    await tester.enterText(
        find.byKey(const Key('password_field')), 'password123');

    // Ensure the "Sign Up" button is visible on the screen.
    await tester.ensureVisible(find.text('Sign Up'));

    // Tap on the "Sign Up" button.
    await tester.tap(find.text('Sign Up'));

    // Wait for the widget tree to settle after the tap.
    await tester.pumpAndSettle();

    // Verify if the snackbar is displayed with the success message after registration.
    expect(find.byType(SnackBar), findsOneWidget);
    expect(find.text('Account created! Login with the same credentials!'),
        findsOneWidget);
  });
}
