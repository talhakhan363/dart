void main() {
  Car myCar = Car(); // creating object of Car class.
  myCar.startEngine();
  myCar.stopEngine();

  Bike myBike = Bike(); // creating object of Bike class.
  myBike.startEngine();
  myBike.stopEngine();
}

abstract class Vehicle {
  // abstract class acting as an interface.
  void startEngine() {
    print("Engine started");
  }

  void stopEngine() {
    print("Engine stopped");
  }
}

class Car implements Vehicle {
  // implementing the Vehicle interface.
  @override
  void startEngine() {
    print("Car engine started");
  }

  @override
  void stopEngine() {
    print("Car engine stopped");
  }
}

class Bike implements Vehicle {
  // another class implementing the Vehicle interface.
  @override
  void startEngine() {
    print("Bike engine started");
  }

  @override
  void stopEngine() {
    print("Bike engine stopped");
  }
}
