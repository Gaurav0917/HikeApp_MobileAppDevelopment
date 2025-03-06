import 'package:assignmentfinal/core/provider/user_provider.dart';
import 'package:assignmentfinal/core/widgets/bottom_bar.dart';
import 'package:assignmentfinal/features/auth/presentation/view/auth_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Test AuthLogin Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => UserProvider(),
          ),
        ],
        child: MaterialApp(
          // Define the routes table for your app.
          routes: {
            '/actual-home': (context) => const BottomBar(),
          },
          home: const AuthLogin(),
        ),
      ),
    );

    // Add your test assertions here to verify if the login screen is displayed correctly.
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Sign In'), findsOneWidget);

    // Scroll the widget tree to ensure the "Sign In" text is visible.
    // final gesture = await tester.startGesture(const Offset(50, 100));
    // await gesture.moveBy(const Offset(0, -300));
    // await tester.pumpAndSettle();
    // await gesture.up();

    // Enter email and password in the TextFormField widgets.
    await tester.enterText(
        find.byKey(const Key('email_field')), 'karma@gmail.com');
    await tester.enterText(find.byKey(const Key('password_field')), 'karma123');

    await tester.ensureVisible(find.text('Sign In'));

    // Tap on the "Sign In" button.
    await tester.tap(find.text('Sign In'));

    // Wait for the widget tree to settle after the tap.
    await tester.pumpAndSettle();

    // Verify if the navigation has taken you to the expected screen (e.g., BottomBar screen).
    expect(find.byType(BottomBar), findsOneWidget);

    // Add any other necessary test cases or assertions for the BottomBar screen.
  });
}
