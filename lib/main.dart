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
          title: Text("Hello World"),
        ),
        // This is your bread and butter area
        // Note though, only one widget can be here
        body: Container(),
      ),
    );
  }
}
