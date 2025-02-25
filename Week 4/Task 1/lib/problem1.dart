void main() {
  Calculator op = new Calculator();
  int sum = op.sum(1, 3);
  int sub = op.sub(2, 5);
  int mul = op.mul(3, 8);
  double div = op.div(9, 1);
  print("Sum: ${sum}");
  print("Subtraction: ${sub}");
  print("Multiplication: ${mul}");
  print("Division: ${div}");
}

class Calculator {
  int sum(int num1, int num2) {
    return num1 + num2;
  }

  int sub(int num1, int num2) {
    return num1 - num2;
  }

  int mul(int num1, int num2) {
    return num1 * num2;
  }

  double div(int num1, int num2) {
    if (num2 != 0)
      return num1 / num2;
    else
      throw Exception("Divide by zero ERORR");
  }
}
