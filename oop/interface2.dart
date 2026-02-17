void main() {
  MacBook myMac = MacBook();
  myMac.turnOn();
  myMac.turnOff();
}

// // This is an abstract interface class.
abstract class Laptop {
  void turnOn(); // this is an abstract method, it has no implementation.

  void turnOff() {
    print("Laptop is turned OFF"); // this is a concrete method, it has an implementation.
  }
}

// Implementing the Laptop interface.
class MacBook extends Laptop {
  // implementing any class requires all methods to be defined.
  // each method from the interface can be customize as needed.

  @override
  void turnOff() {
    print("MacBook is turned OFF");
  }

  // this method is required to be implemented because it's an abstract method in the Laptop class.
  @override
  void turnOn() {
    print("MacBook is turned ON");
  }
}
