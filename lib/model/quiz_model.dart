class QuizQuestion {
  final int id;
  final String description;
  final List<QuizOption> options;

  QuizQuestion({
    required this.id,
    required this.description,
    required this.options,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      id: json['id'] ?? 0,
      description: json['description'] ?? '',
      options: (json['options'] as List<dynamic>?)
          ?.map((optionJson) => QuizOption.fromJson(optionJson))
          .toList() ?? [],
    );
  }
}

class QuizOption {
  final int id;
  final String description;
  final bool isCorrect;

  QuizOption({
    required this.id,
    required this.description,
    required this.isCorrect,
  });

  factory QuizOption.fromJson(Map<String, dynamic> json) {
    return QuizOption(
      id: json['id'] ?? 0,
      description: json['description'] ?? '',
      isCorrect: json['is_correct'] ?? false,
    );
  }
}

class QuizDetails {
  final int id;
  final String title;
  final String topic;
  final int duration;
  final int questionsCount;
  final List<QuizQuestion> questions;

  QuizDetails({
    required this.id,
    required this.title,
    required this.topic,
    required this.duration,
    required this.questionsCount,
    required this.questions,
  });

  factory QuizDetails.fromJson(Map<String, dynamic> json) {
    return QuizDetails(
      id: json['id'] ?? 0,
      title: json['title'] ?? '',
      topic: json['topic'] ?? '',
      duration: json['duration'] ?? 0,
      questionsCount: json['questions_count'] ?? 0,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((questionJson) => QuizQuestion.fromJson(questionJson))
          .toList() ?? [],
    );
  }
}