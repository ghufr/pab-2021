import 'package:flutter/material.dart';
import 'package:test1/latihan_api/components/user_profile.dart';
import 'package:test1/latihan_api/data/user.dart';
import 'package:test1/latihan_api/models/user.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  User? user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan API"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UserProfile(
              user: user,
            ),
            SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                UserDataSource.getUserById('1').then((User result) {
                  setState(() {
                    user = result;
                  });
                });
              },
              child: const Text("GET ONE"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list');
              },
              child: const Text('List'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/input');
              },
              child: const Text('Input'),
            ),
          ],
        ),
      ),
    );
  }
}
