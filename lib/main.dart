import 'package:flutter/material.dart';

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

class MyApp extends StatelessWidget {
  // This decorator just says we are overriding
  // the build method under it
  @override
  // this is a method that will build
  // your UI, using Widget as a type
  Widget build(BuildContext context) {
    var questions = [
      // also valid 'What\'s your favorite color?'
      "What's your favorite Color?",
      "What's your favorite Animal?",
    ];

    // renders the app itself
    return MaterialApp(
      // Creates the base design of the app,
      // which opens the door to other widgets
      // that can be used to show something to
      // the user
      home: Scaffold(
        // this is the top of the screen, and acts more like a
        // shelf where you can put info
        appBar: AppBar(
          title: const Text("Hello World"),
        ),
        // This is your bread and butter area
        // Note though, only one widget can be here
        body: Column(
          // this turns it into a list of widgets
          children: [
            const Text("A question would go here!"),
            ElevatedButton(
              // dont put parenthesis here, it will auto call the method
              // we are setting a pointer here so when it is pressed
              // the code is called then
              onPressed: answerQuestion,
              // Flutter convention has this last
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
          ],
        ),
      ),
    );
  }

  // I personally like methods on the bottom
  // make sure to always plan ahead on what a class does,
  // since classes need methods in them to stand alone.
  // Always make sure that no method is outside its class
  void answerQuestion() {
    // making it a const and a Text follows convention better
    const Text('Duly Noted');
  }
}
