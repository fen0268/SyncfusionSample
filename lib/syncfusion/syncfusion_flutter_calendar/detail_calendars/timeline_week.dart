import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../meeting.dart';

class TimelineWeek extends StatefulWidget {
  const TimelineWeek({super.key});

  @override
  State<TimelineWeek> createState() => _TimelineWeekState();
}

class _TimelineWeekState extends State<TimelineWeek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SfCalendar(
          view: CalendarView.timelineWeek,
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
