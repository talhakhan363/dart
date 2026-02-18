void main() {
  List<Person> People = [
    Person("Talha", 22),
    Person("Asif", 30),
    Person("Furqan", 25),
  ];
  People.forEach((element) {
    print("Name: ${element.name} \t Age: ${element.age}");
  });
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
