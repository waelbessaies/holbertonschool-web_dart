void outer(String name, String id) {
  print(inner(name, id));
}

String inner(String name, String id) {
  List<String> nameParts = name.split(" ");
  String lastNameInitial = nameParts[1][0].toUpperCase();
  String firstName = nameParts[0];
  return "Hello Agent $lastNameInitial.$firstName your id is $id";
}