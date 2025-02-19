/*
  Write a program that takes a list of numbers for example a = [5, 10, 15, 20, 25]
  and makes a new list of only the first and last elements of the given list. 
  For practice, write this code inside a function.
*/
void main() {
  List number = [5, 10, 15, 20, 25];
  subnum(number);
}

void subnum(numbers) {
  List subnum = [];
  subnum.add(numbers.first);
  subnum.add(numbers.last);
  print(subnum);
}
