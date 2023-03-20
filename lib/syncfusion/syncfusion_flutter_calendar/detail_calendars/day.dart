import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../meeting.dart';

class Day extends StatefulWidget {
  const Day({super.key});

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SfCalendar(
          view: CalendarView.day,
          dataSource: MeetingDataSource(_getDataSource()),
          monthViewSettings: const MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          ),
          todayHighlightColor: Colors.red,
          cellBorderColor: Colors.grey,
          appointmentTextStyle: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  List<Meeting> _getDataSource() {
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
