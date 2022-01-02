import 'dart:convert';
import 'package:test1/latihan_api3/Lahan/dataAPI/lahan.dart';
import 'package:http/http.dart' as http;

class LahanRepository {
  // List<Lahan> _movies = <Lahan>[];

  // static Future<List<Movie>> fetchMovieold(int currentPage) async {
  //   var url = Helper.urlApi() + "lahans/get-lahan";

  //   try {
  //     final response = await http.get(Uri.parse(url));
  //     //_jsondata = json.decode(response.body);
  //     debugPrint(response.body);
  //     debugPrint('done');

  //     //Kalau returnnya Single
  //     //List _jsondata;
  //     //_jsondata = json.decode(response.body);

  //     //Jika returnya Mapr
  //     //https://stackoverflow.com/questions/55430061/unhandled-exception-internallinkedhashmapstring-dynamic-is-not-a-subtype-of
  //     Map<String, dynamic> map = json.decode(response.body);
  //     List<dynamic> data = map["items"];
  //     return lahans;
  //   } catch (e) {
  //     print('error caught: $e');
  //   }

  //   var movies = <Movie>[];

  //   return movies;
  // }

  static Future<List<Lahan>> fetchLahan(int currentPage) async {
    var lahans = <Lahan>[];
    try {
      final response = await http.get(
        Uri.parse('http://agriradar.id/api/web/v1/lahans/get-lahan'),
      );
      if (response.statusCode == 200) {
        var lahansJson = json.decode(response.body);
        for (var lahansJson in lahansJson['items']) {
          lahans.add(Lahan.fromJson(lahansJson));
        }
      }
      return lahans;
    } catch (e) {
      return lahans;
    }
  }
}
