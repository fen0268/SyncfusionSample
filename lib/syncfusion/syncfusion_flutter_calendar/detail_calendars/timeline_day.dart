import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TimelineDay extends StatefulWidget {
  const TimelineDay({super.key});

  @override
  State<TimelineDay> createState() => _TimelineDayState();
}

class _TimelineDayState extends State<TimelineDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.timelineDay,
      ),
    );
  }
}
