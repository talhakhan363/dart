import 'dart:io';

void main() {
  List<String> studentsList = [];
  String? noOfStudents;

  while (true) {
    stdout.write("How many students are there in the class? : ");
    noOfStudents = stdin.readLineSync();
    if (noOfStudents == null || int.tryParse(noOfStudents) == null) {
      // int.tryParse(noOfStudents) == null checks if noOfStudents is a valid integer and returns null if it's not. This way we can handle cases where the user enters non-numeric input.

      print("Invalid input. Please enter a valid number.");
    } else {
      break; // Exit the loop if the input is valid.
    }
  }
  for (int i = 1; i <= int.parse(noOfStudents); i++) {
    while (true) {
      stdout.write("Enter the name of student $i: ");
      String? nameOfStudent = stdin.readLineSync();
      if (nameOfStudent == null || nameOfStudent.trim().isEmpty) {
        // nameOfStudent.trim().isEmpty checks if the input is empty or consists only of whitespace. If either condition is true, we consider it invalid. then why we check nameOfStudent == null b
        print("Invalid input. Please enter a valid name.");
        continue; // Skip adding to the list and prompt again.
      }
      studentsList.add(nameOfStudent);
      break; // Exit the inner loop if the input is valid.
    }
  }
  int num = 1;
  print("You have $noOfStudents students in the class. They are: ");
  for (String student in studentsList) {
    print("$num. $student");
    num++;
  }
}
