import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class WorkWeek extends StatefulWidget {
  const WorkWeek({super.key});

  @override
  State<WorkWeek> createState() => _WorkWeekState();
}

class _WorkWeekState extends State<WorkWeek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        view: CalendarView.workWeek,
      ),
    );
  }
}
