void main() {
  print("hello world");

  int? age; // --> nullable value "?" allows nullable value to initialize.
  print(age);
  age = 22; // --> value later assigned [MAIN PURPOSE].
  print(age);

  int age1 = 19; // --> non nullable value.
  print(age1);
}
