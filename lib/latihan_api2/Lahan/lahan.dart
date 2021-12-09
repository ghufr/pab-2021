import 'package:flutter/material.dart';
//import 'package:login_view/Lahan/postAPI/lahan_post_data.dart';
import 'package:test1/latihan_api2/drawer.dart';
import 'package:test1/latihan_api2/Lahan/lahan_view.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';

class Lahan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        backgroundColor: Color(0xff558b2f),
        appBar: AppBar(
          backgroundColor: Color(0xff33691e),
          title: Text("Lahan"),
        ),
        body: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              child: InkWell(
                  /*
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LahanPostHeader()));
                  },
                */
                  child: Card(
                elevation: 15,
                child: SizedBox(
                    height: 300,
                    width: 250,
                    child: ListTile(
                      title: Text("Masukan Data Lahan"),
                      subtitle: Text("Masukan data lahan "),
                    )),
              )),
            ),
            GestureDetector(
              child: InkWell(
                  onTap: () {
                    log("tap lahan");
                    debugPrint('tap tap');
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LahanHeader()));
                  },
                  child: Card(
                    elevation: 15,
                    child: SizedBox(
                        height: 300,
                        width: 250,
                        child: ListTile(
                          title: Text("Info Data Lahan"),
                          subtitle: Text("Kumpulan data lahan"),
                        )),
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
