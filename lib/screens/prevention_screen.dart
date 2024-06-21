import 'package:flutter/material.dart';

class PreventionTip {
  final String title;
  final String description;

  PreventionTip({required this.title, required this.description});
}

class PreventionsScreen extends StatelessWidget {
  final List<PreventionTip> preventionTips = [
    PreventionTip(
      title: 'Use Mosquito Nets',
      description:
          'Sleep under insecticide-treated mosquito nets to prevent mosquito bites.',
    ),
    PreventionTip(
      title: 'Apply Insect Repellent',
      description:
          'Use insect repellent on exposed skin to reduce the risk of mosquito bites.',
    ),
    PreventionTip(
      title: 'Eliminate Mosquito Breeding Sites',
      description:
          'Remove standing water around your home to prevent mosquitoes from breeding.',
    ),
    PreventionTip(
      title: 'Take Antimalarial Medication',
      description:
          'If recommended, take antimalarial medication to prevent malaria infection.',
    ),
  ];

  PreventionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Malaria Prevention Tips'),
      ),
      body: ListView.builder(
        itemCount: preventionTips.length,
        itemBuilder: (context, index) {
          final preventionTip = preventionTips[index];
          return ListTile(
            key: Key('prevention_${index.toString()}'),
            title: Text(preventionTip.title),
            subtitle: Text(preventionTip.description),
          );
        },
      ),
    );
  }
}
