import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final Function answer;
  Quiz(this.questions, this.answer)

  @override
  Widget build(BuildContext context) {
    return Column(
      // this turns it into a list of widgets
      children: [
        Question(
          _questions[_questionIndex]['questionText'] as String,
        ),
        ...(_questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
