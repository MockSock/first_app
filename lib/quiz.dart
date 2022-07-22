import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int questionIndex;

  Quiz(this.questions, this.answerQuestion, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      // this turns it into a list of widgets
      children: [
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
