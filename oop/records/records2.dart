// records allow functions to return multiple values at once.
// this eliminates the need to create custom classes just to return two results.

void main() {
  var operation1 = addSub(21, 3); // receiving a record with multiple results.
  print("Add: ${operation1.$1} Sub: ${operation1.$2}"); // accessing results by position.

  // following is called 'Destructuring' or 'Unpacking', means taking a record and immediately splitting it into separate variables.
  // the returned record is immediately split into two separate variables: [multiply[] and [mod].
  var (multiply, mod) = mulMod(3, 64);
  print("Multiply: ${multiply}  Mod: ${mod}");
}

// function return type is a record of two integers (int, int).

// this function takes two integers and returns their sum and difference as a record.
(int, int) addSub(int x, int y) {
  return (x + y, x - y); // returning two values packaged as a single record.
}

// this function takes two integers and returns their product and modulus as a record.
(int, int) mulMod(int x, int y) {
  return (x * y, x % y);
}
