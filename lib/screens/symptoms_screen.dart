import 'package:flutter/material.dart';

class SymptomsScreen extends StatelessWidget {
  const SymptomsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Symptoms'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ListTile(
              title: Text('Fever'),
              subtitle: Text('A high body temperature.'),
            ),
            ListTile(
              title: Text('Chills'),
              subtitle: Text('Shaking chills that can range from moderate to severe.'),
            ),
            ListTile(
              title: Text('Headache'),
              subtitle: Text('Pain in the head.'),
            ),
            ListTile(
              title: Text('Nausea and Vomiting'),
              subtitle: Text('Feeling and being sick.'),
            ),
            ListTile(
              title: Text('Muscle Pain and Fatigue'),
              subtitle: Text('General discomfort and tiredness.'),
            ),
            ListTile(
              title: Text('Sweating'),
              subtitle: Text('Profuse sweating as the fever goes down.'),
            ),
          ],
        ),
      ),
    );
  }
}
