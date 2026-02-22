import 'dart:io';

// ASYNC FUNCTIONS

void main() {
  test();
}

void test() async {
  // async functions must be marked with async keyword, and they return a Future.
  /* async means that the function will run asynchronously, and it allows you to 
  // use the await keyword inside the function to wait for asynchronous operations 
  // to complete before moving on to the next line of code. */

  print("Start");
  await Future.delayed(Duration(seconds: 3));
  // This line will wait for 3 seconds after Start is printed before it moves on to the next line of code.
  // await is used to wait for the Future.
  print("Stop");
}
