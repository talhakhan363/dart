import 'encapsulationPerson.dart';

void main() {
  Person person1 = Person("Talha", 22);

  person1.getter(); // Accessing private variables via getter method.
  person1.setter("Ahmed", 23); // Modifying private variables via setter method.
  person1.getter(); // Accessing updated private variables via getter method.
}
