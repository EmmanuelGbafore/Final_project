import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace with actual user data or fetch dynamically
    String userName = 'John Doe';
    String userEmail = 'john.doe@example.com';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: $userName',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Email: $userEmail',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Implement edit profile action
                // Navigator.pushNamed(context, '/edit_profile'); // Example navigation
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
