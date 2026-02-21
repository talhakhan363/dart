import 'dart:io';

void main() {
  // METHOD 1

  print("Are you a student? (true/false):");
  String? input = stdin.readLineSync();

  // strict conversion: only "true" becomes true. "false" or junk becomes false/null.
  bool isStudent = bool.tryParse(input ?? "") ?? false;

  print("Is Student: $isStudent");

  // METHOD 2

  print("Do you have a license? (yes/no):");
  String? input2 = stdin.readLineSync();

  // check if the lowercase input starts with 'y' (covers "yes", "y", "YES")
  bool hasLicense = input2?.toLowerCase().startsWith('y') ?? false;

  if (hasLicense) {
    print("You are allowed to drive.");
  } else {
    print("You cannot drive.");
  }
}
