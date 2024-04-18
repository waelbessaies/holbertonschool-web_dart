import 'dart:core';

class Password {
  String password = '';

  bool isValid() {
    RegExp hasUpper = RegExp(r'[A-Z]');
    RegExp hasLower = RegExp(r'[a-z]');
    RegExp hasDigit = RegExp(r'\d');

    return password.length >= 8 &&
           password.length <= 16 &&
           hasUpper.hasMatch(password) &&
           hasLower.hasMatch(password) &&
           hasDigit.hasMatch(password);
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}