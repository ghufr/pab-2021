// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test1/latihan_api3/Lahan/postAPI/lahan_post_model.dart';
import 'package:http/http.dart' as http;
import 'package:test1/latihan_api3/drawer.dart';

class LahanPostHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff558b2f),
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xff33691e),
          title: Text('Informasi Lahan'),
        ),
        body: LahanPost());
  }
}

class LahanPost extends StatefulWidget {
  @override
  _LahanPostState createState() => _LahanPostState();
}

Future<UserModel?> submitData(String name, String job) async {
  Uri apiURL = Uri.parse("https://reqres.in/api/users");

  var apiResult = await http.post(apiURL, body: {"name": name, "job": job});
  var data = apiResult.body;
  print(data);

  if (apiResult.statusCode == 201) {
    String responseString = apiResult.body;
    userModelFromJson(responseString);
  } else {
    return null;
  }
}

class _LahanPostState extends State<LahanPost> {
  UserModel? _userModel;
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Input Name'),
                  controller: nameController,
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.orange),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      hintText: 'Input Job'),
                  controller: jobController,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                      onPressed: () async {
                        String name = nameController.text;
                        String job = jobController.text;

                        UserModel? user = await submitData(name, job);
                        setState(() {
                          _userModel = user;
                        });
                      },
                      child: Text("Submit")),
                )
              ],
            ),
          ),
        ),
        backgroundColor: Color(0xff558b2f));
  }
}
