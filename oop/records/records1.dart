// records help you group multiple objects into single one.
// lets you combine multiple value into single object.
// multiple values of different data types are combined into single group.

void main() {
  var person1 = ("Talha", 22, 85.25, true); // this is record defined with positions.
  print(person1);
  print("Name: ${person1.$1} \nAge: ${person1.$2} \nScore: ${person1.$3} \nPass: ${person1.$4}");

  var person2 = (name: "Ali", age: 23, score: 89.00, pass: true); // records defined with names.

  print("Name: ${person2.name} \nAge: ${person2.age} \nScore: ${person2.score} \nPass: ${person2.pass}");

  /* a key feature of Records is that they are Immutable (unchangeable).
   Once you create [person1\, you cannot change the age later like [ person1.$2 = 23; ]. 
   You would have to create a new record. This makes them very safe for passing data around! */
}
