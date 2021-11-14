import 'package:flutter/material.dart';
import 'package:test1/uts/components/schedule_card.dart';
import 'package:test1/uts/data/schedule.dart';
import 'package:test1/uts/models/schedule_item.dart';

class InformasiLayananPage extends StatefulWidget {
  const InformasiLayananPage({Key? key}) : super(key: key);

  @override
  State<InformasiLayananPage> createState() => _InformasiLayananPageState();
}

class _InformasiLayananPageState extends State<InformasiLayananPage> {
  List<ScheduleItem> schedules = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      schedules = ScheduleDataSource().getSchedules();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Layanan'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: new List.generate(
            schedules.length,
            (index) => ScheduleCard(
              schedule: schedules[index],
            ),
          ),
        ),
      ),
    );
  }
}
