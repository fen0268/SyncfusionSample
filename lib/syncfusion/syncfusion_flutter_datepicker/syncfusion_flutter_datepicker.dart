import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

/// https://pub.dev/packages/syncfusion_flutter_datepicker
/* Flutter Date Range Pickerは、ユーザーが単一の日付、複数の日付、または日付の範囲を簡単に選択できる軽量ウィジェッ
トです。Date Pickerは、月、年、10年、世紀の表示オプションを提供し、目的の日付に素早く移動します。日付の選択を制限する
ために、最小、最大、ブラックアウト、無効の日付をサポートしています。 */
class SyncfusionFlutterDatepicker extends StatefulWidget {
  const SyncfusionFlutterDatepicker({super.key});

  @override
  State<SyncfusionFlutterDatepicker> createState() =>
      _SyncfusionFlutterDatepickerState();
}

class _SyncfusionFlutterDatepickerState
    extends State<SyncfusionFlutterDatepicker> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DatePicker demo'),
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Selected date: $_selectedDate'),
                  Text('Selected date count: $_dateCount'),
                  Text('Selected range: $_range'),
                  Text('Selected ranges count: $_rangeCount')
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 80,
              right: 0,
              bottom: 0,
              child: SfDateRangePicker(
                onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.range,
                initialSelectedRange: PickerDateRange(
                  DateTime.now().subtract(const Duration(days: 4)),
                  DateTime.now().add(const Duration(days: 3)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
