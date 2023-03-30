import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../meeting.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SfCalendar(
          view: CalendarView.schedule,
          dataSource: MeetingDataSource(_getDataSource()),

          /// scheduleViewMonthHeaderBuilder
          // scheduleViewMonthHeaderBuilder: (buildContext, details) {
          //   final outputFormat = DateFormat('yyyy年 M月');
          //   return Stack(
          //     children: [
          //       Image(
          //         image: const AssetImage('assets/IMG_7223.jpg'),
          //         fit: BoxFit.cover,
          //         width: details.bounds.width,
          //         height: details.bounds.height,
          //       ),
          //       Positioned(
          //         left: details.bounds.width * 0.05,
          //         top: details.bounds.height * 0.05,
          //         child: Text(
          //           outputFormat.format(details.date),
          //         ),
          //       ),
          //     ],
          //   );
          // },
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
