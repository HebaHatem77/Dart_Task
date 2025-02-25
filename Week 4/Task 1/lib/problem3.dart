void main() {
  Daughter d = new Daughter();
  d.display();
}

class Mother {
  void display() {
    print("Print from Mother class");
  }
}

class Daughter extends Mother {
  @override
  void display() {
    print("Print from Daughter class and override from Mother class");
  }
}
