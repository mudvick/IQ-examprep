import 'package:flutter/material.dart';

class SubjectScreen extends StatelessWidget {
  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final subjects = [
      "English",
      "Mathematics",
      "Physics",
      "Chemistry",
      "Biology",
      "Economics",
      "Government",
      "Literature",
      "Geography",
      "Commerce",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Subject"),
        backgroundColor: const Color(0xFF0B3D91),
      ),
      body: ListView.builder(
        itemCount: subjects.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(
                Icons.menu_book,
                color: Color(0xFF0B3D91),
              ),
              title: Text(subjects[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Open questions later
              },
            ),
          );
        },
      ),
    );
  }
}