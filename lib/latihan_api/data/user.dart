import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test1/latihan_api/models/user.dart';

class UserDataSource {
  // ignore: non_constant_identifier_names
  static String BASE_URL = 'http://10.0.2.2:1337/api';

  static Future<List<User>> getUsers() async {
    Uri uri = Uri.parse('$BASE_URL/customers');

    var response = await http.get(uri);

    return List<User>.from(
      json.decode(response.body)['data'].map((x) => User.fromJson(x)),
    );
  }

  static Future<User> createUser(User user) async {
    Uri uri = Uri.parse('$BASE_URL/customers');

    var response = await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode({"data": user.toJson()}),
    );

    print(response.body);
    return User.fromJson(json.decode(response.body)['data']);
  }

  static Future<User> getUserById(String id) async {
    Uri uri = Uri.parse('$BASE_URL/customers/$id');

    var response = await http.get(uri);

    return User.fromJson(json.decode(response.body)['data']);
  }
}
