class User {
  late int id;
  late String name;
  late int age;
  late double height;

  User(
      {required this.id,
      required this.name,
      required this.age,
      required this.height});

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
        id: userJson['id'],
        name: userJson['name'],
        age: userJson['age'],
        height: userJson['height']);
  }

  Map toJson() {
    return {'id': id, 'name': name, 'age': age, 'height': height};
  }

  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height)";
  }
}
