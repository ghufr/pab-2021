// @dart=2.9
import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  String id, name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> object) {
    return User(
        id: object['id'].toString(),
        name: object['first_name'] + " " + object['last_name']);
  }

  static Future<User> connectToAPI(String id) async {
    Uri apiURL = Uri.parse("https://reqres.in/api/users/" + id);

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  } //*/

}
