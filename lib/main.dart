import 'package:flutter/material.dart';
import 'package:malaria_help_app/screens/appointments_screen.dart';
import 'package:malaria_help_app/screens/home_screen.dart';
import 'package:malaria_help_app/screens/login_screen.dart';
import 'package:malaria_help_app/screens/prevention_screen.dart'; // Corrected import
import 'package:malaria_help_app/screens/profile_screen.dart';
import 'package:malaria_help_app/screens/symptoms_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Added Key? key parameter

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Malaria Help App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/appointments': (context) => const AppointmentsScreen(),
        '/prevention': (context) =>  PreventionsScreen(), // Corrected usage
        '/symptoms': (context) => const SymptomsScreen(),
        // Define other routes as needed
      },
    );
  }
}
