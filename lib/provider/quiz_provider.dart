import 'package:flutter/foundation.dart';

import '../model/quiz_model.dart';
import '../service/quiz_service.dart';


class QuizProvider with ChangeNotifier {
  QuizDetails? _quizDetails;
  int _currentQuestionIndex = 0;
  int _totalPoints = 0;
  int _correctAnswers = 0;
  bool _isLoading = false;
  String? _error;

  QuizDetails? get quizDetails => _quizDetails;
  int get currentQuestionIndex => _currentQuestionIndex;
  int get totalPoints => _totalPoints;
  int get correctAnswers => _correctAnswers;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadQuiz() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _quizDetails = await QuizService().fetchQuizDetails();
      _currentQuestionIndex = 0;
      _totalPoints = 0;
      _correctAnswers = 0;
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void answerQuestion(QuizOption selectedOption) {
    if (_quizDetails == null || _currentQuestionIndex >= _quizDetails!.questions.length) return;

    final currentQuestion = _quizDetails!.questions[_currentQuestionIndex];

    if (selectedOption.isCorrect) {
      _totalPoints += 4;
      _correctAnswers++;
    } else {
      _totalPoints -= 1;
    }

    _currentQuestionIndex++;
    notifyListeners();
  }

  bool get isQuizComplete =>
      _quizDetails == null ||
          _currentQuestionIndex >= _quizDetails!.questions.length;
}