// mixin class can't be constructed, extended, or implemented.
// it is used to add functionality to other classes without using inheritance.
// mixin class can have methods and properties.
// it doesnot allow object creation directly from it.
// mixin is used to reuse code in multiple class hierarchies.

// *** WORKING WITH "WITH" KEYWORD ***

void main() {
  Person person = Person("albert@gmail.com", "231dasdakjs");
  person.displayInfo();
}

/* if we hadn't used mixins, we would have to apply validation and logging logic inside the Person class itself,
   which would make the class bulky and less reusable. */

// copying the methods and properties from the mixins into the consuming class [Person].
class Person with logger, passwordValidator {
  // using mixins
  String email, password;
  Person(this.email, this.password);

  void displayInfo() {
    if (validatePassword(password) != null) {
      // using method from mixin passwordValidator
      log(validatePassword(password).toString()); // using method from mixin logger
    } else {
      log("Email: $email, Password: $password"); // using method from mixin logger
    }
  }
}

mixin logger {
  // mixin class
  void log(String message) {
    print("Log: $message");
  }
}

mixin passwordValidator {
  // another mixin class
  String? validatePassword(String password) {
    if (password.isEmpty) {
      return "Password cannot be empty";
    } else if (password.length < 6) {
      return "Password must be at least 6 characters long";
    }
    return null;
  }
}
