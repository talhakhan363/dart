void main() {
  // 1st object/instance created for class to show results.
  Person person1 = Person();
  person1.name = "Talha";
  person1.feild = "Software Engineering";
  person1.age = 22;
  person1.isUndergrad = true;
  person1.displayInfo();
  // we called a function from class [Person] in [main] to print.

  print("");

  // 2nd object for another person.
  Person person2 = Person();
  person2.name = "Ahmed";
  person2.feild = "Computer Science";
  person2.age = 23;
  person2.isUndergrad = false;
  person2.displayInfo();
}

class Person {
  String? name;
  String? feild;
  int? age;
  bool? isUndergrad;

  // no printing can be done without methods.

  void displayInfo() {
    print("My name is ${name}");
    print("My domain is ${feild}");
    print("I am ${age} yrs old");
    print(isUndergrad == false ? "He is graduated" : "He is undergraduate");
  }
}
