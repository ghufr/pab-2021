import 'package:flutter/material.dart';
import 'package:test1/latihan_api2/Lahan/lahan_repository.dart';
import 'package:test1/latihan_api2/Lahan/dataAPI/movie.dart';
import 'package:test1/latihan_api2/Lahan/detailed_screen.dart';
import 'package:test1/latihan_api2/drawer.dart';
import 'dart:developer';

class LahanHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff558b2f),
        drawer: NavDrawer(),
        appBar: AppBar(
          backgroundColor: Color(0xff33691e),
          title: Text('Informasi Lahan'),
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
  List<Movie> movies = <Movie>[];
  ScrollController scrollController = ScrollController();
  late int totalResult;

  bool onNotification(ScrollNotification scrollNotification) {
    if (scrollNotification is ScrollUpdateNotification) {
      if (scrollController.offset >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        setState(() {
          currentPage += 1;
          LahanRepository.fetchMovie(currentPage).then((response) {
            if (response != null) {
              setState(() {
                movies.addAll(response);
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
    debugPrint('mulai init');
    LahanRepository.fetchMovie(currentPage).then((value) {
      setState(() {
        movies.addAll(value);
        //totalResult = value.
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: movies == null || movies.length == 0
            ? Center(
                child: CircularProgressIndicator(),
              )
            : NotificationListener(
                onNotification: onNotification,
                child: ListView.builder(
                  controller: scrollController,
                  scrollDirection: Axis.horizontal,
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
                                      DetailScreen(movie: movies[index])))
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                movies[index].title,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                movies[index].overview.toString(),
                                style: TextStyle(color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: movies.length,
                )),
        backgroundColor: Color(0xff558b2f));
  }
}
