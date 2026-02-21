import 'dart:io';

void main() {
  // 1. Reading the Name (String).
  print("Enter your name: ");
  // Use readLineSync() to capture the text entered by the user.
  String? nameInput = stdin.readLineSync();
  // ? tells the compiler that the variable might be null.

  // Use null-aware operator (??) to provide a default if input is empty.
  String name = nameInput ?? "Guest";

  // 2. Reading the Age (Integer).
  print("Enter your age: ");
  String? ageInput = stdin.readLineSync();

  // Safely convert the string input to an integer.
  int age = int.tryParse(ageInput ?? '') ?? 0;
  // If the user enters invalid text (e.g., "twenty"), age will default to 0.

  print("\n--- Output ---");
  print("Name: $name  Age: $age");
}
