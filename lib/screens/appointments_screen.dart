import 'package:flutter/material.dart';

class Appointment {
  final String title;
  final DateTime dateTime;

  Appointment({required this.title, required this.dateTime});
}

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({Key? key}) : super(key: key);

  @override
  _AppointmentsScreenState createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen> {
  List<Appointment> appointments = [];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();

  void _addAppointment() {
    String title = _titleController.text.trim();
    DateTime dateTime = DateTime.parse(_dateTimeController.text);

    setState(() {
      appointments.add(Appointment(title: title, dateTime: dateTime));
    });

    _titleController.clear();
    _dateTimeController.clear();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Appointment Added'),
        content: Text('Appointment "$title" added successfully.'),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointments Screen'),
      ),
      body: appointments.isEmpty
          ? const Center(
              child: Text('No appointments scheduled.'),
            )
          : ListView.builder(
              itemCount: appointments.length,
              itemBuilder: (context, index) {
                final appointment = appointments[index];
                return ListTile(
                  title: Text(appointment.title),
                  subtitle: Text(
                    '${appointment.dateTime.day}/${appointment.dateTime.month}/${appointment.dateTime.year} '
                    '${appointment.dateTime.hour}:${appointment.dateTime.minute}',
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Add Appointment'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        labelText: 'Appointment Title',
                      ),
                    ),
                    TextField(
                      controller: _dateTimeController,
                      decoration: const InputDecoration(
                        labelText: 'Appointment Date & Time (yyyy-MM-dd HH:mm)',
                      ),
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: _addAppointment,
                  child: const Text('Add'),
                ),
              ],
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
