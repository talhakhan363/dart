import 'dart:io';

void main() {
  var mapName = {"key1": "talha", "key2": 2, "key3": false};

  print(mapName);
  print(mapName["key2"]); // prints given key value.
  print(mapName["key5"]); // if key not exist, it shows null.
}
