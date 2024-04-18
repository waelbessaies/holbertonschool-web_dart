import 'dart:core';

class Password {
  String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    RegExp hasUpper = RegExp(r'[A-Z]');
    RegExp hasLower = RegExp(r'[a-z]');
    RegExp hasDigit = RegExp(r'\d');

    return _password.length >= 8 &&
           _password.length <= 16 &&
           hasUpper.hasMatch(_password) &&
           hasLower.hasMatch(_password) &&
           hasDigit.hasMatch(_password);
  }

  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}