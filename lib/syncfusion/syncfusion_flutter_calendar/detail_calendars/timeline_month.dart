import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TimelineMonth extends StatefulWidget {
  const TimelineMonth({super.key});

  @override
  State<TimelineMonth> createState() => _TimelineMonthState();
}

class _TimelineMonthState extends State<TimelineMonth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.timelineMonth,
      ),
    );
  }
}
