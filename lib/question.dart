// General rule of thumb is one widget
// per file, so code is more
// reusable and keeps files clean
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  // this is the constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
