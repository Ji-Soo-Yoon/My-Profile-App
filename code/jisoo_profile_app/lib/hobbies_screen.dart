import 'package:flutter/material.dart';

class HobbiesScreen extends StatelessWidget {
  const HobbiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hobbies = [
      'Coding & Programming',
      'Playing Nintendo',
      'Dancing at Party',
      'Beatboxing',
      'Listening K-POP',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Hobbies',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: hobbies.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.purple.shade50,
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple.shade200,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                title: Text(
                  hobbies[index],
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
