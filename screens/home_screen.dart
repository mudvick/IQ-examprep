import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget examCard(
      IconData icon,
      String title,
      Color color,
      ) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: 150,
        height: 150,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: color),
            const SizedBox(height: 15),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IQ ExamPrep"),
        backgroundColor: const Color(0xFF0B3D91),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          children: [
            examCard(Icons.menu_book, "JAMB", Colors.blue),
            examCard(Icons.school, "WAEC", Colors.green),
            examCard(Icons.book, "NECO", Colors.orange),
            examCard(Icons.account_balance, "Post-UTME", Colors.red),
          ],
        ),
      ),
    );
  }
}