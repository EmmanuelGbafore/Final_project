# **Malaria_Help_App** 🏥
Welcome to the Malaria_Help_App, a one stop mobile application designed to provide Liberian users with essential medical information regarding malaria such as common symptoms, preventive tips, as well as enabling them book medical help through appointment scheduling.

## **Table of Contents** 📚
Features
Installation
Usage
Testing
Contributing
License

## **Features** ✨
Symptom Tracking: Users can track various symptoms and get information about each.
Preventive Tips: Access a list of tips to prevent common diseases such as malaria.
Appointment Scheduling: Book and manage medical appointments.
User Profile: Manage personal health information and preferences.

## **Installation** ⚒️
Prerequisites
Flutter SDK installed on your machine.
Android Studio or Xcode for iOS development.
An IDE like Visual Studio Code or Android Studio.

## **Steps** ⏳
Clone the repository:
git clone https://github.com/EmmanuelGbafore/final_project.git
cd final_project

_Install dependencies_:
flutter pub get

_Run the app_:
flutter run

## **Usage** 🚀
Navigation
Login Screen: The initial screen where users log in or sign up.
Home Screen: The main dashboard providing access to different features.
Symptoms Screen: Gives common symptoms of malaria with detailed information.
Preventions Screen: Gives best tips for preventing malaria.
Appointments Screen: Book and manage your medical appointments.
Profile Screen: Set up your user profile.

## **Tracking Symptoms** 📈
Navigate to the Symptoms screen.
Browse through the list of symptoms displayed.
Click on a symptom to view detailed information about it.


## **Testing** ✅
Running Tests
To run the tests, use the following command:

flutter test
Example Test
Below is an example of a widget test for navigation:

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
    expect(find.text('Malaria Prevention Tips'), findsOneWidget);

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


## **Contributing** 🤝
Contributions are welcome! Please follow these steps to contribute:

Fork the repository.
Create a new branch (git checkout -b feature-branch).
Make your changes.
Commit your changes (git commit -m 'Add some feature').
Push to the branch (git push origin feature-branch).
Open a pull request.

## **License** 📄
This project is licensed under the MIT License - see the LICENSE file for details.
