/*    
    Create a program that asks the user for a number and 
    then prints out a list of all the divisors of that number.
*/
import 'dart:io';

void main() {
  print("Enter your number : ");
  int? number = int.parse(stdin.readLineSync()!);
  List divisors = [];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      divisors.add(i);
    }
  }
  print(divisors);
}
