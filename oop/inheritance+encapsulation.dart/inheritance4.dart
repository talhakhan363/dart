import 'inheritance3.dart';

void main() {
  // Creating an instance of the derived class.
  Dell laptop1 = Dell("ChromBook", 10, "RVX23G123", 85000.00);
  laptop1.modelNumber = "RVX23G123";
  laptop1.price = 85000.00;
  laptop1.displayAllInfo(); // Calling method to display all info.

  laptop1.getter(); // Accessing method from base class.
  laptop1.setter("MacBook", 5); // Modifying values via setter method.
  /* from this we set new values to the private variables _name and _gen of the base class Laptop.
     means we changed values for /laptop1] instance instead of creating a new one. */

  laptop1.getter(); // Accessing updated values via getter method.
  laptop1.displayAllInfo(); // Displaying updated info.
}

// Derived/Child class
class Dell extends Laptop {
  String? modelNumber;
  double? price;

  // Constructor of base class that calls the super class constructor.
  Dell(String stName, int stAge, this.modelNumber, this.price)
    : super(stName, stAge) {
    print("Constructor of Dell class called");
  }
  /* the values [stName] and [stAge] are passed to the constructor of the base class [Person].
     the rest of the values [regNumber] and [semester] are initialized in the derived class [Student].
     super keyword is used to call the constructor of the base class. */

  // method to display all info
  void displayAllInfo() {
    print("displayAllInfo called");
    super
        .displayInfo(); // super tells Dart to look for the method in the parent class.
    print("Model Number: $modelNumber");
    print("Price: $price");
  }
}
