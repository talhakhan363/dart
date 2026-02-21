void main() {
  var listNames = [10, 20, 30];
  print(listNames);
  listNames.add(40); // adds item in list.
  print(listNames);

  var names = []; // blank list.
  print(names);

  // list doesn't require same data type insert.
  names.add("Talha");
  names.add(21.00);
  names.add(true);
  print(names);

  names.insert(1, 0.032); // inserts at given index by moving all values ahead.
  print(names);

  names[1] = "Changed"; // replaced the value at given index.
  print(names);

  names.replaceRange(0, 3, ["1st", "2nd", "3rd"]);
  print(names);

  names.addAll(listNames); // add all list items of other.
  print(names);

  // different list operations:
  print("Length: ${names.length}");
  print("Reversed: ${names.reversed}");
  print("First Element: ${names.first}");
  print("Is Empty? ${names.isEmpty}");
  print("Runtime Type: ${names.runtimeType}");
  print("3rd Element: ${names.elementAt(2)}");
}
