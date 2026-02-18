void main() {
  Person person1 = Person("Talha", 22);
  Person person2 = Person("Salman", 23);
  person1.displayInfo();
  person2.displayInfo();
}

class Person {
  // these instances are linked with [this.] keyword.
  String? name;
  int? age;

  // its a constructor, called whenever the object is initialized.
  Person(String Name, int Age) {
    print("constructor calling");
    this.name = Name; // this is auto initialization for the instance/object.
    this.age = Age;
  }

  void displayInfo() {
    print("--------------------");
    print("Name: ${name}");
    print("Age: ${age}");
    print("--------------------");
  }
}
