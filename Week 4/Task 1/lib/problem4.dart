void main() {
  Animal zebra = A("Zebra", 3, "Forest");
  Animal dolphin = A("Dolphin", 5, "Sea");

  zebra.display();
  dolphin.display();
}

class Animal {
  String name;
  int age;
  Animal(this.name, this.age);

  void set_value(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void display() {
    print("Name: $name, Age: $age");
  }
}

class A implements Animal {
  @override
  int age;

  @override
  String name;

  String orign;

  A(this.name, this.age, this.orign);

  @override
  void display() {
    print("Name: $name, Age: $age, Place of origin: $orign");
  }

  @override
  void set_value(String name, int age) {
    this.name = name;
    this.age = age;
  }
}
