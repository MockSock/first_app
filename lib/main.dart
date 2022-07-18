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
  Let's take user input as an example
*/

void main() {
  // a value is passed to the parameter
  displayNumbersToText(8);
}

displayNumbersToText(int i) {
  //Change so that the input from the method will
  // then be in the for loop
  for (i; i <= i * 2; i++) {
    print("Hello Number $i");
  }
}
