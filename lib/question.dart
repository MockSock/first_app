// General rule of thumb is one widget
// per file, so code is more
// reusable and keeps files clean
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final shows that it wont change within its
  // parent class, but it can still change externally
  final String questionText;

  // this is the constructor
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Uses full width of the device to center the screen
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
