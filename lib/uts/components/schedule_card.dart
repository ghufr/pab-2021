import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test1/uts/models/schedule_item.dart';

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({Key? key, required this.schedule}) : super(key: key);

  final ScheduleItem schedule;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              schedule.day,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Text(schedule.start),
                Text(' - '),
                Text(schedule.end),
              ],
            )
          ],
        ),
      ),
    );
  }
}
