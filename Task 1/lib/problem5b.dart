/*
  Write a program that takes a list of numbers for example a = [5, 10, 15, 20, 25]
  and makes a new list of only the first and last elements of the given list. 
*/
void main() {
  List numbers = [5, 10, 15, 20, 25];
  List subnum = [];
  var first = numbers.firstWhere((e) => e > 0);
  var second = numbers.reversed.firstWhere((e) => e > 0);
  subnum.add(first);
  subnum.add(second);
  print(subnum);
}
