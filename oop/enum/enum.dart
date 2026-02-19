void main() {
  Person person1 = Person("John Doe", Gender.Male, MaritalStatus.Single);
  person1.displayInfo();
  Person person2 = Person("Jane Smith", Gender.Female, MaritalStatus.Married);
  person2.displayInfo();
  Person person3 = Person("Alex Johnson", Gender.Other, MaritalStatus.Divorced);
  person3.displayInfo();
}

// enum is a special class that represents a group of constants (unchangeable variables).
// Enums are used to define a collection of related values that can be used as types in your code.
// They improve code readability and maintainability by providing meaningful names for sets of values.

enum Gender { Male, Female, Other } // Example enum

enum MaritalStatus {
  Single,
  Married,
  Divorced,
  Widowed,
} // Another example enum

class Person {
  String name;
  Gender gender; // Using the Gender enum
  MaritalStatus status; // Using the MaritalStatus enum
  Person(this.name, this.gender, this.status);

  void displayInfo() {
    print(
      "Name: $name \nGender: ${gender.name} \nMarital Status: ${status.name}",
    );

    /*
    // switching based on enum values.
    switch (gender) {
      case Gender.Female:
        print("Gender: Female");
      case Gender.Male:
        print("Gender: Male");
      case Gender.Other:
        print("Gender: Other");
    }

    // switching based on enum values.
    switch (status) {
      case MaritalStatus.Single:
        print("Marital Status: Single");
      case MaritalStatus.Divorced:
        print("Marital Status: Divorced");
      case MaritalStatus.Widowed:
        print("Marital Status: Widowed");
      case MaritalStatus.Married:
        print("Marital Status: Married");
    }
    */
  }
}
