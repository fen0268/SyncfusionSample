import 'package:flutter/material.dart';

import 'detail_calendars/day.dart';
import 'detail_calendars/month.dart';
import 'detail_calendars/schedule.dart';
import 'detail_calendars/timeline_day.dart';
import 'detail_calendars/timeline_month.dart';
import 'detail_calendars/timeline_week.dart';
import 'detail_calendars/week.dart';
import 'detail_calendars/work_week.dart';

class SyncfusionFlutterCalendar extends StatefulWidget {
  const SyncfusionFlutterCalendar({super.key});

  @override
  State<SyncfusionFlutterCalendar> createState() =>
      _SyncfusionFlutterCalendarState();
}

class _SyncfusionFlutterCalendarState extends State<SyncfusionFlutterCalendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SfCalendar'),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text('Day'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Day())),
          ),
          ListTile(
            title: const Text('Month'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Month())),
          ),
          ListTile(
            title: const Text('Schedule'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Schedule()),
            ),
          ),
          ListTile(
            title: const Text('TimelineDay'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const TimelineDay()),
            ),
          ),
          ListTile(
            title: const Text('TimelineMonth'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const TimelineMonth()),
            ),
          ),
          ListTile(
            title: const Text('TimelineWeek'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const TimelineWeek()),
            ),
          ),
          ListTile(
            title: const Text('Week'),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const Week())),
          ),
          ListTile(
            title: const Text('WorkWeek'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const WorkWeek()),
            ),
          ),
        ],
      ),
    );
  }
}
