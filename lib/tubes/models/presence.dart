class Geo {
  String lat, lng;
  Geo({
    required this.lat,
    required this.lng,
  });
}

class Presence {
  String uid;
  int time;
  Geo? location;

  Presence({
    required this.uid,
    required this.time,
    required this.location,
  });
}
