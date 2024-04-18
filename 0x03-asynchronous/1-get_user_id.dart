import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async {
  final userData = await fetchUserData();
  final decodedData = jsonDecode(userData);
  final userId = decodedData['id'];
  return userId;
}

void main() async {
  print(await getUserId());
}
