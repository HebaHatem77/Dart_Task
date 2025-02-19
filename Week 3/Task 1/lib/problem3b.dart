/*
  Write a password generator in Dart. Be creative with how you generate passwords 
  strong passwords heve e mix of lowercase letters, uppercase letters, numbers, and Symbols. 
  The passwords shouid be random, generating a new password every time the user asks for a new pessword
*/
import 'dart:math';

void main() async {
  print('Your password is ${generatePassword(10)}');
}

String generatePassword(int passLength) {
  String pass =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789!@#%^&*';
  String password = '';
  List<String> list = pass.split('').toList();
  Random rand = Random();

  for (int i = 0; i < passLength; i++) {
    int index = rand.nextInt(list.length);
    password += list[index];
  }
  return password;
}
