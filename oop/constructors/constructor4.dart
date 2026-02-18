void main() {
  List<Person> People = [
    Person(age: 21, email: "email123@gmail.com"),
    Person(name: "Salman", age: 23, email: "email112255@gmail.com"),
    Person(age: 32, email: "456email@gmail.com"),
    Person(name: "Ashraf", email: "email4563@gmail.com"),
    Person(age: 42, email: "987@gmail.com"),
    Person(email: "email87412@gmail.com"),
  ];
  People.forEach((element) {
    element.displayInfo();
  });
}

class Person {
  String? name;
  int? age;
  String? email;

  // one required parameter [email] and two optional/default parameters [name, age] added.
  Person({this.name = "Default", this.age = 18, required this.email}) {
    print("constructor calling");
  }

  void displayInfo() {
    print("Name: ${name} \t Age: ${age} \t Email: ${email}");
  }
}
