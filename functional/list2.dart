void main() {
  List<int> randomNumbers = [0, 213, 324, 12, 4, 354, 268, 25, 3, 89, 87, 562, 752, 968, 45, 135];
  print(randomNumbers); // print the list.
  print(randomNumbers.length); // print the length of the list.
  print(randomNumbers.reversed); // print the reversed list.
  print(randomNumbers.asMap()); // print the map of the list.
  print(randomNumbers.isEmpty); // print if the list is empty.
  print(randomNumbers.isNotEmpty); // print if the list is not empty.
  print(randomNumbers.iterator); // print the iterator of the list.
  print(randomNumbers.firstOrNull); // print the first element of the list.
  print(randomNumbers.contains(213)); // print if the list contains the element.
  print(randomNumbers.toString()); // print the string representation of the list.
  print(randomNumbers.skip(3)); // print the list after skipping the first 3 elements.
  print(randomNumbers.getRange(0, 5)); // print the range of the list from index 0 to 5.
}
