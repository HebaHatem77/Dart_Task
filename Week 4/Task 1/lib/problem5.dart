void main() {
  SocialMarketing f = SocialMarketing("FaceBook", "clothes");
  Campaigns c = Campaigns(DateTime.now(), "Donate for hospital equipments");
  Events e = Events("Job Market", "Freelance Jobs and Soft Skills...");

  f.display();
  c.display();
  e.display();
}

class SocialMarketing {
  String name;
  String field;

  SocialMarketing(this.name, this.field);

  void display() {
    print("Social Media Account: $name, Field: $field");
  }
}

class Campaigns {
  DateTime date;
  String description;

  Campaigns(this.date, this.description);

  void display() {
    print("Date: $date, Description: $description");
  }
}

class Events {
  String name;
  String description;

  Events(this.name, this.description);

  void display() {
    print("Title: $name, Description: $description");
  }
}
