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
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    UserDataSource.getUserById('7').then((User result) {
                      setState(() {
                        user = result;
                      });
                    });
                  },
                  child: const Text("Get"),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/list');
                  },
                  child: const Text('List'),
                ),
                const SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/input');
                  },
                  child: const Text('Input'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
