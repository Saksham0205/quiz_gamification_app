import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/quiz_model.dart';


class QuizService {
  static const String apiUrl = 'https://api.jsonserve.com/Uw5CrX'; 

  Future<QuizDetails> fetchQuizDetails() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        // Parse the JSON response
        Map<String, dynamic> jsonResponse = json.decode(response.body);

        // Convert to QuizDetails object
        QuizDetails quizDetails = QuizDetails.fromJson(jsonResponse);

        // Print quiz details for debugging
        print('Quiz Title: ${quizDetails.title}');
        print('Topic: ${quizDetails.topic}');
        print('Number of Questions: ${quizDetails.questionsCount}');

        // Print each question
        for (var question in quizDetails.questions) {
          print('\nQuestion: ${question.description}');
          print('Options:');
          for (var option in question.options) {
            print('- ${option.description} (Correct: ${option.isCorrect})');
          }
        }

        return quizDetails;
      } else {
        throw Exception('Failed to load quiz details');
      }
    } catch (e) {
      print('Error fetching quiz data: $e');
      throw Exception('Error fetching quiz data: $e');
    }
  }
}