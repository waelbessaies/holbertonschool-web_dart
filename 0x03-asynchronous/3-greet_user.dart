import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  try {
    final userData = await fetchUserData();
    final decodedData = jsonDecode(userData);
    final username = decodedData['username'];
    return 'Hello $username';
  } catch (e) {
    return 'error caught: $e';
  }
}

Future<String> loginUser() async {
  try {
    final credentials = await checkCredentials();
    if (credentials) {
      print('There is a user: true');
      return await greetUser();
    } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (e) {
    return 'error caught: $e';
  }
}