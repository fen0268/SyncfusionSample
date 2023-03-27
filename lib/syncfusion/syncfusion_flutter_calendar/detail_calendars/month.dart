import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../meeting.dart';

class Month extends StatefulWidget {
  const Month({super.key});

  @override
  State<Month> createState() => _MonthState();
}

class _MonthState extends State<Month> {
  @override
  Widget build(BuildContext context) {
    // final dateFormat = DateFormat('EE', 'ja_JP');
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SfCalendar(
          view: CalendarView.month,
          dataSource: MeetingDataSource(_getDataSource()),
          headerHeight: 0,
          monthViewSettings: const MonthViewSettings(
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
          ),
        ),
      ),
    );
  }

  List<Meeting> _getDataSource() {
    final meetings = <Meeting>[];
    final today = DateTime.now();
    meetings.add(
      Meeting(
        '質問zoom',
        DateTime(today.year, today.month, today.day, 20),
        DateTime(today.year, today.month, today.day, 21),
        const Color(0xFF0F8644),
      ),
    );
    meetings.add(
      Meeting(
        '勉強会',
        DateTime(today.year, today.month, today.day, 21),
        DateTime(today.year, today.month, today.day, 22),
        const Color.fromARGB(255, 212, 88, 125),
      ),
    );
    return meetings;
  }
}
