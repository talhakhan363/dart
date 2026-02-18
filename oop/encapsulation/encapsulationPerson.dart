// this is a private file.
// encapsulation using private variables (with underscore _).
class Person {
  String? _name; // private variable --> scope is limited to this file only.
  int? _age;

  Person(this._name, this._age);

  // setter method to modify private variables.
  void setter(String setName, int setAge) {
    print("Setter called");
    this._name = setName;
    this._age = setAge;
  }

  // getter method to access private variables.
  void getter() {
    print("Getter called");
    String? getName = this._name;
    int? getAge = this._age!;
    print("Name: $getName");
    print("Age: $getAge");
  }
}
