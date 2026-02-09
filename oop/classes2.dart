void main() {
  // 1st object/instance created for class to show results.
  Student student1 = Student();
  student1.id = 101;
  student1.name = "Sara";
  student1.semester = "Fall 2023";
  student1.grade = "A";
  student1.displayInfo();
  // we called a function from class [Student] in [main] to print.

  // 2nd object for another student.
  Student student2 = Student();
  student2.id = 102;
  student2.name = "John";
  student2.semester = "Spring 2024";
  student2.grade = "B+";
  student2.displayInfo();
  // Updating grade for student2
  student2.updateGrade("A-");
  student2.displayInfo();
}

class Student {
  int? id;
  String? name;
  String? semester;
  String? grade;

  void displayInfo() {
    print("Student ID: ${id}");
    print("Student Name: ${name}");
    print("Semester: ${semester}");
    print("Grade: ${grade}");
    print("------------------------");
  }

  void updateGrade(String newGrade) {
    grade = newGrade;
    print("Grade updated for ${name} to: ${grade}");
    print("------------------------");
  }
}
