/* The [on] keyword is used to restrict a mixin so it can only be used by classes that extend a specific parent.
You cannot use [on] instead of with[]]. You use them together:
[on]: Used in the mixin definition to set the rule.
[with]: Used in the class definition to apply the mixin.*/

// *** WORKING WITH "ON" KEYWORD ***
// same logic applied as in [mixin1.dart] but with restrictions using [on] keyword.

void main() {
  Person person = Person("albert@gmail.com", "231dasdakjs");
  person.displayInfo();
}

// 1. We MUST create a base class to use the 'on' keyword meaningfuly.
// The 'on' keyword requires a superclass to act as the constraint.
abstract class User {} // why abstract? Because we don't want to create instances of User directly. It's just a base for our mixins and Person class.

// Now [Person] MUST extend [User] to satisfy the 'on User' requirement from the mixins.
class Person extends User with logger, passwordValidator {
  // extends User is mandatory now.

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

// The [on] keyword here tells Dart: "This mixin can ONLY be used by classes that extend [User]".
mixin logger on User {
  // mixin restricted to User subclasses
  void log(String message) {
    print("Log: $message");
  }
}

// Similarly, we restrict this validator. If a class isn't a [User], it can't use this.
mixin passwordValidator on User {
  // another mixin restricted to User subclasses
  String? validatePassword(String password) {
    if (password.isEmpty) {
      return "Password cannot be empty";
    } else if (password.length < 6) {
      return "Password must be at least 6 characters long";
    }
    return null;
  }
}
