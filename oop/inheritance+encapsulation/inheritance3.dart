class Laptop {
  String? _name;
  int? _gen;

  Laptop(this._name, this._gen) {
    print("Constructor of Laptop class called");
  }

  void displayInfo() {
    print("displayInfo called");
    print("Name: $_name");
    print("Age: $_gen");
  }

  void getter() {
    String? getName = this._name;
    int? getGen = this._gen;
    print("Getter called");
    print("Name: $getName");
    print("Generation: $getGen");
  }

  void setter(String setName, int setGen) {
    print("Setter called");
    this._name = setName;
    this._gen = setGen;
  }
}
