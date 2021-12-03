class User {
  String id, firstName, lastName, email, avatar;

  User({
    required this.id,
    required this.firstName,
    this.lastName = '',
    this.email = '',
    this.avatar = '',
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"].toString(),
        firstName: json["attributes"]["first_name"],
        lastName: json["attributes"]["last_name"],
        email: json["attributes"]["email"],
        avatar: json["attributes"]["avatar"],
      );

  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'avatar': avatar,
      };
}
