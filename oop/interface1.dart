void main() {
  MacBook myMac = MacBook();
  myMac.turnOn();
  myMac.turnOff();

  Laptop myLaptop = Laptop();
  myLaptop.turnOn();
  myLaptop.turnOff();
}

// This is a concrete interface class.
class Laptop {
  void turnOn() {
    print("Laptop is turned ON");
  }

  void turnOff() {
    print("Laptop is turned OFF");
  }
}

// Implementing the Laptop interface.
class MacBook implements Laptop {
  // implementing any class requires all methods and fields to be defined.
  // each method from the interface can be customize as needed.

  @override
  void turnOff() {
    print("MacBook is turned OFF");
  }

  void turnOn() {
    print("MacBook is turned ON");
  }
}
