import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // this turns it into a list of widgets
      children: [
        Question(
          questions[_questionIndex]['questionText'] as String,
        ),
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
