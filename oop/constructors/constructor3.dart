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
  String? name;
  int? age;

  Person(this.name, this.age) {
    print("constructor calling");
  }

  void displayInfo() {
    print("--------------------");
    print("Name: ${name}");
    print("Age: ${age}");
    print("--------------------");
  }
}
