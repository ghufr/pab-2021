class User {
  String firstName, email;
  String? lastName;

  User({
    required this.email,
    required this.firstName,
    this.lastName,
  });
}
