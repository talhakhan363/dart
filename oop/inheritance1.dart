void main() {
  Student Talha = Student(); // Creating an instance of the derived class.
  Talha.name = "Talha";
  Talha.age = 22;
  Talha.displayInfo(); // Calling method from base class.
  Talha.regNumber = "BSCS-12345";
  Talha.semester = "7th";
  Talha.displayStudentInfo(); // Calling method from derived class.
}

// Base/Parent class
class Person {
  String? name;
  int? age;

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

// Derived/Child class
class Student extends Person {
  String? regNumber;
  String? semester;

  void displayStudentInfo() {
    print("Registration Number: $regNumber");
    print("Semester: $semester");
  }
}
