import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/question_model.dart';

class QuestionService {
  Future<List<Question>> loadQuestions(String fileName) async {
    final String jsonString =
        await rootBundle.loadString('assets/questions/$fileName');

    final List<dynamic> jsonData = json.decode(jsonString);

    return jsonData
        .map((item) => Question.fromJson(item))
        .toList();
  }
}