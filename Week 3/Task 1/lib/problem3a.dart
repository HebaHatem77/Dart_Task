/*
  Write a password generator in Dart. Be creative with how you generate passwords 
  strong passwords heve e mix of lowercase letters, uppercase letters, numbers, and Symbols. 
  The passwords shouid be random, generating a new password every time the user asks for a new pessword
*/
import 'dart:math';

void main() {
  print(getRandomString(5));
}

String chars =
    'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789!@#%^&*';
Random _rnd = Random();

String getRandomString(int len) => String.fromCharCodes(Iterable.generate(
    len, (_) => chars.codeUnitAt(_rnd.nextInt(chars.length))));
