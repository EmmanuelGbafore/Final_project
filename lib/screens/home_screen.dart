import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malaria Help App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/symptoms');
              },
              child: const Text('Symptoms'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/preventions');
              },
              child: const Text('Preventions'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/appointments');
              },
              child: const Text('Appointments'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
