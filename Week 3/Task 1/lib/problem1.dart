/*
    Generate a random number between 1 and 100. Ask the user to quess the number, 
    then tell them whether they guessed too low, too high, or exactly nght. 
    (with limit of 7 trials).
*/
import 'dart:math';
import 'dart:io';

void main() {
  Random random = new Random();
  int randomNumber = random.nextInt(101); // from 0 upto 100 included
  for (int i = 0; i < 7; i++) {
    print("Guess the number ");
    int? num = int.parse(stdin.readLineSync()!);
    if (num > randomNumber) {
      print("You are too high");
    } else if (num < randomNumber) {
      print("You are too low");
    } else {
      print("You are exactly right");
      break;
    }
  }
  print("The random number is $randomNumber");
}
