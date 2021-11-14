class ScheduleItem {
  String day, start, end;

  ScheduleItem({required this.day, required this.start, required this.end});

  factory ScheduleItem.fromJson(Map<String, dynamic> json) => ScheduleItem(
        day: json["day"],
        start: json["start"],
        end: json["end"],
      );
}
