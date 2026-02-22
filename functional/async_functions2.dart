void main() {
  print(test1());
  print(test2());
}

Future<int> test1() async {
  print("Start1");
  await Future.delayed(Duration(seconds: 3));
  print("Stop1");
  return 0;
}

int test2() {
  print("Start2");
  print("Stop2");
  return 0;
}
