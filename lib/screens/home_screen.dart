import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malaria Help App'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        mainAxisSpacing: 16.0,
        crossAxisSpacing: 16.0,
        children: <Widget>[
          _buildMenuItem(context, 'Symptoms', 'assets/symptoms.png', '/symptoms'),
          _buildMenuItem(context, 'Preventions', 'assets/preventions.jpg', '/preventions'),
          _buildMenuItem(context, 'Appointments', 'assets/appointments.jpg', '/appointments'),
          _buildMenuItem(context, 'Profile', 'assets/profile.jpg', '/profile'),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, String imagePath, String routeName) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imagePath,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 80.0,
                );
              },
            ),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
