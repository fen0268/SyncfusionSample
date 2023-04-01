import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../meeting.dart';

class Week extends StatefulWidget {
  const Week({super.key});

  @override
  State<Week> createState() => _WeekState();
}

class _WeekState extends State<Week> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SfCalendar(
          view: CalendarView.week,
          dataSource: MeetingDataSource(getDataSource()),
          monthViewSettings: const MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          ),
        ),
      ),
    );
  }

  List<Meeting> getDataSource() {
    final meetings = <Meeting>[];
    final today = DateTime.now();
    final startTime = DateTime(today.year, today.month, today.day, 9);
    final endTime = startTime.add(const Duration(hours: 2));
    meetings.add(
      Meeting(
        'Conference',
        startTime,
        endTime,
        const Color(0xFF0F8644),
      ),
    );
    return meetings;
  }
}
