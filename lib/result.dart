import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  // Let's make a getter, which is a mix
  // between a method and a property
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are just like the developer!';
    } else if (resultScore <= 12) {
      resultText = 'You seem like a cool person!';
    } else {
      resultText = 'We wouldn\'t talk much, you are strange.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}
