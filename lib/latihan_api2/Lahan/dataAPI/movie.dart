class Movie {
  final int id;
  //final int totalpages;
  //final int totalresults;
  final String title;
  final String overview;
  final String releasedate;
  final String backdroppath;

  Movie({
    required this.id,
    //required this.totalpages,
    //required this.totalresults,
    required this.title,
    required this.overview,
    required this.releasedate,
    required this.backdroppath,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    var baseUrl = 'https://image.tmdb.org/t/p/original';
    var backdrop = '';
    if (json['backdrop_path'] != null) {
      backdrop = baseUrl + json['backdrop_path'];
    }
    return Movie(
        id: json['id'],
        //totalpages: json['total_pages'],
        //totalresults: json['total_results'],
        title: json['title'],
        overview: json['overview'],
        releasedate: json['release_date'],
        backdroppath: backdrop);
  }
}
