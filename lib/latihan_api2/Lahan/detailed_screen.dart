import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test1/latihan_api2/Lahan/dataAPI/movie.dart';
import 'package:test1/latihan_api2/drawer.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavDrawer(),
        backgroundColor: Color(0xff558b2f),
        appBar: AppBar(
          backgroundColor: Color(0xff33691e),
          title: Text(movie.title),
        ),
        body: Container(
          child: Column(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                movie.overview,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15),
            ),
            Center(
              child: CachedNetworkImage(
                imageUrl: movie.backdroppath,
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
                width: 450,
                height: 450,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
