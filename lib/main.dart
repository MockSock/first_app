// Note, do not compile code

/*
  This is a basic for loop that would have an output 
  Hello Number 0
  Hello Number 1
  Hello Number 2
  Hello Number 3
  Hello Number 4
  Hello Number 5

  This is all coming from the void main function, which 
  is special because it is the entry point of the app,
  so no other method should use main

  Unlike other languages, Dart uses ; to separate the 
  different expressions
  Like other languages though, it is Typed and uses 
  lower camel case for its methods
  EX: makeUserLaugh()
*/

void main() {
  for (int i = 0; i <= 5; i++) {
    print("Hello Number $i");
  }
}
