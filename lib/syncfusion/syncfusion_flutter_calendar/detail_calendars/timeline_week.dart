import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TimelineWeek extends StatefulWidget {
  const TimelineWeek({super.key});

  @override
  State<TimelineWeek> createState() => _TimelineWeekState();
}

class _TimelineWeekState extends State<TimelineWeek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.timelineWeek,
      ),
    );
  }
}
