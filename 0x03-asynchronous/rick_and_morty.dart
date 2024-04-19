import 'dart:convert';
import 'package:http/http.dart' as http;

printRmCharacters() async {
  final response =
      await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    List characters = data['results'];
    for (var character in characters) {
      print(character['name']);
    }
  } else {
    throw Exception('Failed to load album');
  }
}