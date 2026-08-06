import 'package:flutter/material.dart';

void main() {
  runApp(const IQExamPrepApp());
}

class IQExamPrepApp extends StatelessWidget {
  const IQExamPrepApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IQ ExamPrep',
      home: Scaffold(
        backgroundColor: const Color(0xFF0B3D91),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.school,
                size: 100,
                color: Color(0xFFFFC107),
              ),
              SizedBox(height: 20),
              Text(
                'IQ ExamPrep',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Practice. Learn. Succeed.',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }   
}