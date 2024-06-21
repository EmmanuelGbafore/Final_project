import 'package:flutter_test/flutter_test.dart';
import 'package:malaria_help_app/main.dart';

void main() {
  testWidgets('Navigation Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Tap on Symptoms button
    await tester.tap(find.text('Symptoms'));
    await tester.pumpAndSettle();
    expect(find.text('Symptoms'), findsOneWidget);

    // Tap on Preventions button
    await tester.tap(find.text('Preventions'));
    await tester.pumpAndSettle();
    expect(find.text('Malaria Prevention Tips'), findsOneWidget); // Corrected expectation

    // Tap on Profile button
    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();
    expect(find.text('User Profile Information'), findsOneWidget);

    // Tap on Appointments button
    await tester.tap(find.text('Appointments'));
    await tester.pumpAndSettle();
    expect(find.text('List of Appointments'), findsOneWidget);

    // Tap on Login button
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();
    expect(find.text('Login Screen'), findsOneWidget);

    // Tap on Home button
    await tester.tap(find.text('Home'));
    await tester.pumpAndSettle();
    expect(find.text('Malaria Help App'), findsOneWidget);
  });
}
