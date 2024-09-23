class User {
  String id;
  String email;
  String firstName;
  String lastName;

  User(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName});

  User.fromJson(Map data)
      : id = data["id"],
        email = data["email"],
        firstName = data["firstName"],
        lastName = data["lastName"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    return data;
  }
}
