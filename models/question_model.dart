class Question {
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String explanation;
  final String subject;
  final String topic;
  final String examType;

  Question({
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
    required this.subject,
    required this.topic,
    required this.examType,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      question: json['question'],
      options: List<String>.from(json['options']),
      correctAnswer: json['correctAnswer'],
      explanation: json['explanation'],
      subject: json['subject'],
      topic: json['topic'],
      examType: json['examType'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'options': options,
      'correctAnswer': correctAnswer,
      'explanation': explanation,
      'subject': subject,
      'topic': topic,
      'examType': examType,
    };
  }
}