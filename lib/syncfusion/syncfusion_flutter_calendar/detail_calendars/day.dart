import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    final calendarController = CalendarController();
    final japaneseWeekdayFormat = DateFormat('M月d日(EEE)', 'ja_JP');
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SfCalendar(
          /// [view] カレンダーの種類を選択できるプロパティ
          view: CalendarView.day,

          /// [dataSource] カレンダーに表示するデータをリスト形式で格納
          dataSource: MeetingDataSource(
            _getDataSource(),
          ),

          /// 左上の日付のフォーマット
          headerDateFormat: japaneseWeekdayFormat.format(DateTime.now()),

          todayHighlightColor: Colors.red,
          todayTextStyle: const TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),

          timeSlotViewSettings: const TimeSlotViewSettings(
            timeFormat: 'H時',
            timeTextStyle: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),

          cellBorderColor: Colors.grey,

          /// appointment Deco
          appointmentTextStyle: const TextStyle(color: Colors.white),
          appointmentTimeTextFormat:
              japaneseWeekdayFormat.format(DateTime.now()),
          //
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
