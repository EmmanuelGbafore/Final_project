import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late String userName;
  late String userEmail;
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    userName = 'John Doe';
    userEmail = 'john.doe@example.com';
    _nameController = TextEditingController(text: userName);
    _emailController = TextEditingController(text: userEmail);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _toggleEdit() {
    setState(() {
      _isEditing = !_isEditing;
      // If switching to view mode, update the current values
      if (!_isEditing) {
        userName = _nameController.text;
        userEmail = _emailController.text;
      }
    });
  }

  void _saveChanges() {
    setState(() {
      // Save the changes to the profile
      userName = _nameController.text;
      userEmail = _emailController.text;
      _isEditing = false; // Disable editing mode after saving
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Screen'),
        actions: [
          if (_isEditing)
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: _saveChanges,
            ),
          IconButton(
            icon: Icon(_isEditing ? Icons.cancel : Icons.edit),
            onPressed: _toggleEdit,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              enabled: _isEditing, // Enable editing mode
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 8.0),
            TextField(
              enabled: _isEditing, // Enable editing mode
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: !_isEditing
          ? FloatingActionButton(
              onPressed: _toggleEdit,
              child: const Icon(Icons.edit),
            )
          : null, // Hide FAB when editing
    );
  }
}
