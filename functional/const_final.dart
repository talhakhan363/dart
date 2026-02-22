void main() {
  final name = "Ahmed";
  print(name);
  // name = "Ali";    --> it shows final var can't modified.

  final String name2; // 1st diff between const and final,
  name2 = "Farooq";
  print(name2);

  const name3 = "Talha";
  print(name3);
  /* const name3;
  name3 = "Ali";     --> it shows const var should be declared within the line. */

  final list1 = [22, 33, 44, 55];
  print(list1);
  list1.add(11); // final can modify the list.
  // list1 = [1, 2, 3]; --> it means it can't point to another list but it can modify the existing list.
  print(list1);

  const list2 = [1, 2, 3, 4, 5];
  print(list2);
  // list1.add(1);   --> it shows that const list even can't modified a single value.
}
