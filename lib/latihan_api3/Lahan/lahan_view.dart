import 'package:flutter/material.dart';
import 'package:test1/latihan_api3/Lahan/lahan.dart';
import 'package:test1/latihan_api3/Lahan/lahan_repository.dart';
import 'package:test1/latihan_api3/Lahan/dataAPI/lahan.dart';
import 'package:test1/latihan_api3/Lahan/detailed_screen.dart';
import 'package:test1/latihan_api3/drawer.dart';

class LahanHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff558b2f),
        appBar: new AppBar(
          title: new Text(
            "Informasi Lahan",
          ),
          backgroundColor: Color(0xff33691e),
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LahanPage(),
                ),
              );
            },
          ),
        ),
        body: LahanCard());
  }
}

class LahanCard extends StatefulWidget {
  @override
  _LahanCardState createState() => _LahanCardState();
}

class _LahanCardState extends State<LahanCard> {
  int currentPage = 1;
  List<Lahan> lahans = <Lahan>[];
  ScrollController scrollController = ScrollController();
  late int totalResult;

  bool onNotification(ScrollNotification scrollNotification) {
    if (scrollNotification is ScrollUpdateNotification) {
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        setState(() {
          currentPage += 1;
          LahanRepository.fetchLahan(currentPage).then((response) {
            if (response != null) {
              setState(() {
                lahans.addAll(response);
              });
            }
          });
        });
      }
    }
    return true;
  }

  @override
  void initState() {
    LahanRepository.fetchLahan(currentPage).then((value) {
      setState(() {
        lahans.addAll(value);
        //totalResult = value.
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: lahans == null || lahans.length == 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : NotificationListener(
                onNotification: onNotification,
                child: ListView.builder(
                  controller: scrollController,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 15,
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () => {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DetailScreen(lahan: lahans[index])))
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                lahans[index].nama_lahan,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Luas: " +
                                    lahans[index].luas_lahan_total.toString() +
                                    ' Ha',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              Text(
                                "Kemiringan: " +
                                    lahans[index].kemiringan.toString(),
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: lahans.length,
                )),
        backgroundColor: Color(0xff558b2f));
  }
}
