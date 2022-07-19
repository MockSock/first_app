// Note, do not compile code

/*
  This is a basic for loop that would have an output 
  Hello Number i or 8
  until it gets to
  Hello Number i*2 or 16

  This is all coming from the void main function, which 
  is special because it is the entry point of the app,
  so no other method should use main. But within this,
  we can call other functions, or even entire blocks of code

  This creates the Widget Tree, where everything branches from main(),
  and is made into States

  Unlike other languages, Dart uses ; to separate the 
  different expressions
  Like other languages though, it is Typed and uses 
  lower camel case for its methods, whcih can take parameters
  Let's take the number 8 instead

  Now to be clear, you have to be very explicit when using Dart
  it will assume nothing and will follow everything to a T. 
  Make sure to either print, return, or perform a task with whatever 
  you are working on
*/

void main() {
  // a value is passed to the parameter
  displayNumbersToText(8);
  displayName('Jamie');
}

// What happens if we make this a void method?
// It can't return any value and
// then that value can not be printed
// or used unless it is changed to the
// type that best fits the situation
displayNumbersToText(int i) {
  //Change so that the input from the method will
  // then be in the for loop
  for (i; i <= i * 2; i++) {
    print("Hello Number $i");
  }
}

// Let's go a bit more complex by using a variable

displayName(nameInput) {
  // both are valid, but the top one is preferred
  // String name = nameInput;
  var name = nameInput;
  print(name);
}

// Finally, objects, which in an ideal world will be used the most
// since they are easy to reuse, and are closest to real world work

class Human {
  // now this will act as a blueprint where the variables that would
  // clutter code will now be stored and be able to be called when needed
  int age = 26;
  String name = 'Jamie';
}
