import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background);

  String eventName;

  DateTime from;

  DateTime to;

  Color background;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return _getMeetingData(index).from;
  }

  @override
  DateTime getEndTime(int index) {
    return _getMeetingData(index).to;
  }

  @override
  String getSubject(int index) {
    return _getMeetingData(index).eventName;
  }

  @override
  Color getColor(int index) {
    return _getMeetingData(index).background;
  }

  Meeting _getMeetingData(int index) {
    final dynamic meeting = appointments![index];
    late final Meeting meetingData;
    if (meeting is Meeting) {
      meetingData = meeting;
    }

    return meetingData;
  }
}

List<Meeting> getDataSource() {
  final meetings = <Meeting>[];
  final today = DateTime.now();
  final startTime = DateTime(today.year, today.month, today.day, 9);
  final endTime = startTime.add(const Duration(hours: 2));
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
