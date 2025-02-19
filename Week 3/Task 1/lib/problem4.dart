/*
  write a program that returns a list that contains only the elements 
  that are common between them (without duplicates). 
  Make sure your program works on two lists of different sizes. 
*/
void main() {
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List b = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  Set subnum = {};
  for (int i = 0; i < a.length; i++) {
    for (int j = 0; j < b.length; j++) {
      if (a[i] == b[j]) {
        subnum.add(a[i]);
      }
    }
  }
  print(subnum.toList());
}
