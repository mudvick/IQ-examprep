import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const ResultScreen({
    super.key,
    required this.score,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    double percentage = (score / totalQuestions) * 100;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Exam Result"),
        backgroundColor: const Color(0xFF0B3D91),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.emoji_events,
                color: Colors.amber,
                size: 90,
              ),

              const SizedBox(height: 20),

              const Text(
                "Congratulations!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Score: $score / $totalQuestions",
                style: const TextStyle(
                  fontSize: 22,
                ),
              ),

              const SizedBox(height: 10),

              Text(
                "${percentage.toStringAsFixed(1)}%",
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}