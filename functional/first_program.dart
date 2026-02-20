
import 'dart:io';

void main(){

  print("First Program");

  //stdout.write also same as print but prints statement very next without new line.
  stdout.write("Enter your name: ");
  var name = stdin.readLineSync();
  print("Welcome, $name");


}