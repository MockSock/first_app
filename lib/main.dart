import 'package:flutter/material.dart';

void main() {
  // a special method that runs the app in main()
  runApp(MyApp());
}

// Now since everything is a widget, we need to create it
// Widgets are a special type of class, which come in two flavors

// Stateless, where nothing changes
// EX: A logo or a static loading screen

// Stateful, where change occurs, may it be by the app or user
// EX: A new user form that will be sent to the app or an animation

// It does this by inheriting from the source code within flutter

class MyApp extends StatelessWidget {
  // this is a method that will build
  // your UI, using Widget as a type
  Widget build(BuildContext context) {
    // renders the app itself
    return MaterialApp(
      home: Text('Hello World!'),
    );
  }
}
