import 'dart:convert';
import 'package:test1/latihan_api2/Lahan/dataAPI/movie.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:flutter/foundation.dart';

class LahanRepository {
  List<Movie> _movies = <Movie>[];

  static Future<List<Movie>> fetchMovie(int currentPage) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/popular?api_key=d97e7d1e2de7ce97f3cd56370ebad374&language=en-US&page=$currentPage'));
    var movies = <Movie>[];
    debugPrint('fetc muiv init');

    if (response.statusCode == 200) {
      //debugPrint('respon masuk' + response.body);
      debugPrint('respon masuk');
      var moviesJson = json.decode(response.body);
      debugPrint('json');
      for (var movieJson in moviesJson['results']) {
        //debugPrint('json' + moviesJson['results']);
        movies.add(Movie.fromJson(movieJson));
      }
    }
    return movies;
  }
}
