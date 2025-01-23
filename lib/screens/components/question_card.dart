import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/quiz_model.dart';
import '../../provider/quiz_provider.dart';
import 'answer_button.dart';

class QuestionCard extends StatelessWidget {
  final QuizQuestion question;

  const QuestionCard({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.description,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          ...question.options.map((option) => AnswerButton(
            text: option.description,
            onPressed: () {
              Provider.of<QuizProvider>(context, listen: false)
                  .answerQuestion(option);
            },
          )).toList(),
        ],
      ),
    );
  }
}