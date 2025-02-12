/*
  Given a list of integers, write a function that finds the max and min 
  integers in the list,without using any library functions in Dart.
*/
void main() {
  List numbers = [5, 10, 15, 20, 25];
  int max = numbers[0];
  int min = numbers[0];
  for (int i = 0; i < numbers.length; i++) {
    if (max < numbers[i]) {
      max = numbers[i];
    }
    if (min > numbers[i]) {
      min = numbers[i];
    }
  }
  print("The min number is $min");
  print("The max number is $max");
}
