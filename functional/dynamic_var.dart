void main() {
  print("First Program");

  String name = "Talha";
  print(name);

  var name2 = "Farooq";
  // name2 = 5; --> this will show error that string can't convert into integer.

  Object name3;
  name3 = "Farhan";
  print(name3);
  name3 = 3;
  print(name3); /* here comes the concept of dynamic var, if there's
  no initialization after declaration in var, its dynamic by nature. */

  name3 = false;
  print(name3);
  name3 = [1, 2, 3];
  print(name3);
}
