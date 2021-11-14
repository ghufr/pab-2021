import 'dart:convert';

import 'package:test1/uts/models/schedule_item.dart';

class ScheduleDataSource {
  getSchedules() {
    String rawJson = '''[
      {
        "day": "Senin",
        "start": "09.00",
        "end": "15.00"
      },
      {
        "day": "Selasa",
        "start": "09.00",
        "end": "15.00"
      },
      {
        "day": "Rabu",
        "start": "09.00",
        "end": "15.00"
      },
      {
        "day": "Kamis",
        "start": "09.00",
        "end": "15.00"
      },
      {
        "day": "Jumat",
        "start": "09.00",
        "end": "15.00"
      },
      {
        "day": "Sabtu",
        "start": "09.00",
        "end": "14.00"
      },
      {
        "day": "Minggu",
        "start": "Tutup",
        "end": ""
      }
    ]''';

    return List<ScheduleItem>.from(
        json.decode(rawJson).map((x) => ScheduleItem.fromJson(x)));
  }
}
