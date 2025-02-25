void main() {
  Triangle tri = Triangle(10, 5);
  Rectangle rect = Rectangle(8, 4);

  print("Triangle Area = ${tri.area()}");
  print("Rectangle Area = ${rect.area()}");
}

abstract class Shape {
  double width, height;
  Shape(this.width, this.height);
  double area();
}

class Triangle extends Shape {
  Triangle(double width, double height) : super(width, height);
  @override
  double area() => 0.5 * width * height;
}

class Rectangle extends Shape {
  Rectangle(double width, double height) : super(width, height);
  @override
  double area() => width * height;
}
