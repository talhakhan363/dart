void main() {
  Student student1 = Student(
    "Talha",
    22,
    "B22110106058",
    "7th",
  ); // Creating an instance of the derived class.
  student1.displayInfo(); // Calling method from base class.
  student1.displayStudentInfo(); // Calling method from derived class.

  student1.displayAllInfo(); // Calling method to display all info.
}

// Base/Parent class
class Person {
  String? name;
  int? age;

  Person(this.name, this.age) {
    print("Constructor of Person class called");
  }

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

// Derived/Child class
class Student extends Person {
  String? regNumber;
  String? semester;

  // Constructor of base class that calls the super class constructor.
  Student(String stName, int stAge, this.regNumber, this.semester)
    : super(stName, stAge) {
    print("Constructor of Student class called");
  }
  // the values [stName] and [stAge] are passed to the constructor of the base class [Person].
  // the rest of the values [regNumber] and [semester] are initialized in the derived class [Student].
  // super keyword is used to call the constructor of the base class.

  void displayStudentInfo() {
    print("Registration Number: $regNumber");
    print("Semester: $semester");
  }

  // method to display all info
  void displayAllInfo() {
    super
        .displayInfo(); // super tells Dart to look for the method in the parent class.
    displayStudentInfo(); // method from derived class
  }
}
