import 'package:flutter/material.dart';
import 'post_result_model.dart';
import 'user_model.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult;
  User? user;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan API"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text((postResult != null)
                  ? postResult!.id +
                      " | " +
                      postResult!.name +
                      " | " +
                      postResult!.job +
                      " | " +
                      postResult!.created +
                      " | "
                  : "Tidak Ada Data"),
              ElevatedButton(
                  onPressed: () {
                    PostResult.connectToAPI("Badu", "Dokter").then((value) {
                      postResult = value;
                      setState(() {});
                    });
                  },
                  child: Text("POST")),

              /*GET API */
              /*
              Text((user != null)
                  ? user.id + " | " + user.name
                  : "Tidak Ada Data"),
              ElevatedButton(
                  onPressed: () {
                    User.connectToAPI("3").then((value) {
                      user = value;
                      setState(() {});
                    });
                  },
                  child: Text("GET")),
              */
            ],
          ),
        ),
      ),
    );
  }
}
