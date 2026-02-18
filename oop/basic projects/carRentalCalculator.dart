void main() {
  Car myCar = Car("Toyota", "Corolla", 2020, 5);
  myCar.displayInfo();
  myCar.calculateRentalPrice(
    5,
  ); // Calculate rental price for 5 days and 4 passengers.

  Car myLuxuryCar = Car("Audi", "R8", 2006, 2);
  myLuxuryCar.displayInfo();
  myLuxuryCar.calculateRentalPriceLuxury(
    3,
  ); // Calculate rental price for 3 days and 2 passengers luxury.

  Car mySuv = Car("Ford", "Explorer", 2021, 7);
  mySuv.displayInfo();
  mySuv.calculateRentalPrice(
    10,
  ); // Calculate rental price for 10 days and 7 passengers.

  /*
  CONFUSION ?
  How we know that the method [calculateRentalPrice] is called from [Car] class and not from [Vehicle] class?
  Answer: Because we have [overridden] the method [calculateRentalPrice] in the [Car] class. 
  When we create an object of [Car] class and call the method, it will use the overridden method in Car class.
  And if it does not find the method in [Car] class, then it will look for the method in [Vehicle] class.
  If we had to call the method from Vehicle class, we would have to use [super.calculateRentalPrice(days)]*/
}

class Vehicle {
  String? brand;
  String? model;
  int? year;

  Vehicle(this.brand, this.model, this.year);

  // Method to calculate rental price.
  void calculateRentalPrice(int days) {
    // Basic rental price calculation
    double pricePerDay = 30.00; // minimum base price per day for any vehicle.
    double totalPrice = pricePerDay * days; // total price calculation.
    print("Total rental price for $days days: \$$totalPrice");
  }
}

class Car extends Vehicle {
  int passengerCapacity;
  Car(String brand, String model, int year, this.passengerCapacity)
    : super(brand, model, year);
  // [doors] is the only property defined in Car class, rest are inherited from Vehicle class.

  void displayInfo() {
    print(
      "\t*** VEHICLE INFO *** \nCar: $brand $model, Year: $year, Passenger Capcaity: $passengerCapacity",
    );
  }

  @override
  void calculateRentalPrice(int days) {
    // Customized rental price calculation for Car.
    double pricePerDay = 50; // higher base price per day for cars.
    double price = pricePerDay * days; // base price calculation.
    double pricePerCapacity = 5; // hardcoded price per capacity.
    double totalPricePerCapacity =
        pricePerCapacity * passengerCapacity; // extra charge based on capacity
    double totalPrice =
        price + totalPricePerCapacity; // total price calculation.
    print("---------------------------------------------------------");
    print("\tRental Rrice Calculation");
    print("---------------------------------------------------------");
    print(
      "Days: $days \nPer day rent: $pricePerDay \nFor $days days (Car): \$$price \nPassenger Capacity: $passengerCapacity \nPrice per single capacity: \$$pricePerCapacity, for $passengerCapacity persons = \$$totalPricePerCapacity \nTotal Price: \$$totalPrice \n",
    );
    print("__________________________________________________________");
  }

  void calculateRentalPriceLuxury(int days) {
    // Customized rental price calculation for Luxury Cars.
    double pricePerDay = 50; // higher base price per day for cars.
    double price = pricePerDay * days; // base price calculation.
    double pricePerCapacity = 20; // hardcoded price per capacity.
    double totalPricePerCapacity =
        pricePerCapacity * passengerCapacity; // extra charge based on capacity
    double totalPrice =
        price + totalPricePerCapacity; // total price calculation.
    print("---------------------------------------------------------");
    print("\tRental Rrice Calculation");
    print("---------------------------------------------------------");
    print(
      "Days: $days \nPer day rent: $pricePerDay \nFor $days days (Car): \$$price \nPassenger Capacity: $passengerCapacity \nPrice per single capacity: \$$pricePerCapacity, for $passengerCapacity persons = \$$totalPricePerCapacity \nTotal Price: \$$totalPrice \n",
    );
    print("__________________________________________________________");
  }
}
