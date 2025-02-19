/*
  Ask the user for a string and print out whether this stringis a palindrome or not. 
  A palindrome is a string that reads the same forwards and backnards.
*/
import 'dart:io';

void main() {
  print("Enter your string : ");
  String? word = stdin.readLineSync();
  if (word != null) {
    if (word.split('').reversed.join('') == word) {
      print("The string is palindrome");
    } else {
      print("The string is not palindrome");
    }
  }
}
