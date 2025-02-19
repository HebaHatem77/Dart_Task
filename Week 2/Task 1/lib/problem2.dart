// Ask the user for a number and determine whether the number is even or not.
import 'dart:io';

void main() {
  print("Enter number : ");
  int? number = int.parse(stdin.readLineSync()!);
  if (number.isEven) {
    print("$number is even.");
  } else {
    print("$number is not even.");
  }
}
