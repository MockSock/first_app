import 'package:first_app/quiz.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

// This just looks better to me
void main() => runApp(MyApp());

// Now since everything is a widget, we need to create it
// Widgets are a special type of class, which come in Multiple flavors

// Input/Output which is visible to the user
// Ex: RaisedButton, Text

// Layout/Control, which are the moving parts under the hood
// These give structure so the other widgets can shine
// Ex: Row, Column, ListView

// Container() is a widget that belongs to both,
// it can be stylized and can control what widgets are together

// It does this by inheriting from the source code within flutter

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // make sure to return the state this is meant
    // for, this is the main connection

    // an underscore will make the class private,
    // protecting the code from tampering from
    // other portions of the app
    return _MyAppState();
  }
}

// Stateful widgets require their own class to keep track of
// what is going on internally, which allows it to rebuild
class _MyAppState extends State<MyApp> {
  // code to cycle through _questions list
  // use var instead of int when using 0
  // When the class is private, you usually wanna
  // make the variables within it private as well
  var _questionIndex = 0;

  // final means the value will never change
  // unless it is rebuilt and a new value is initialized

  // const means that the value is constant, but multiple calls
  // can return different values from the same variable. This
  // list is proof. It can't be used on the class level without
  // the static keyword, but final and const together can be better
  final _questions = const [
    // this designates a map
    {
      'questionText': "What's your favorite Color?",
      'answers': ['Blue', 'Red', 'Green'],
    },
    {
      "questionText": "What's your favorite Animal?",
      'answers': ['Tiger', 'Raven', 'Horse', 'Wolf'],
    },
    {
      "questionText": "What's your favorite hobby?",
      'answers': ['Painting', 'Music', 'Cooking', 'Gardening'],
    },
  ];

  // make sure to always plan ahead on what a class does,
  // since classes need methods in them to stand alone.
  // Always make sure that no method is outside its class
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more _questions');
    }
  }

  @override
  // this is a method that will build
  // your UI, using Widget as a type
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // this is the top of the screen, and acts more like a
        // shelf where you can put info
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        // This is your bread and butter area
        // Note though, only one widget can be here
        // this is a basic if statement now
        body: _questionIndex < _questions.length
            // Now we pass the functions from the parent
            // to the child in order for it to be done

            // When a value is required, the name has to be linked
            // to what is being passed down
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            // This is the else portion
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
