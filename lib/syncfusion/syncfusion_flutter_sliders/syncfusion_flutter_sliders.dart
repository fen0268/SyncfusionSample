import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

/// https://pub.dev/packages/syncfusion_flutter_sliders
class SyncfusionFlutterSliders extends StatefulWidget {
  const SyncfusionFlutterSliders({super.key});

  @override
  State<SyncfusionFlutterSliders> createState() =>
      _SyncfusionFlutterSlidersState();
}

class _SyncfusionFlutterSlidersState extends State<SyncfusionFlutterSliders> {
  final List<Data> _chartData = <Data>[
    Data(x: DateTime(2003, 01, 01), y: 3.4),
    Data(x: DateTime(2004, 01, 01), y: 2.8),
    Data(x: DateTime(2005, 01, 01), y: 1.6),
    Data(x: DateTime(2006, 01, 01), y: 2.3),
    Data(x: DateTime(2007, 01, 01), y: 2.5),
    Data(x: DateTime(2008, 01, 01), y: 2.9),
    Data(x: DateTime(2009, 01, 01), y: 3.8),
    Data(x: DateTime(2010, 01, 01), y: 2),
  ];

  final DateTime _dateMin = DateTime(2003, 01, 01);
  final DateTime _dateMax = DateTime(2010, 01, 01);
  final SfRangeValues _dateValues =
      SfRangeValues(DateTime(2005, 01, 01), DateTime(2008, 01, 01));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter Range Selector'),
      ),
      body: Container(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                // ignore: missing_required_param
                child: SfRangeSelector(
                  min: _dateMin,
                  max: _dateMax,
                  initialValues: _dateValues,
                  interval: 1,
                  dateIntervalType: DateIntervalType.years,
                  dateFormat: DateFormat.y(),
                  showTicks: true,
                  showLabels: true,
                  child: SizedBox(
                    child: SfCartesianChart(
                      margin: EdgeInsets.zero,
                      primaryXAxis: DateTimeAxis(
                        minimum: _dateMin,
                        maximum: _dateMax,
                        isVisible: false,
                      ),
                      primaryYAxis: NumericAxis(isVisible: false, maximum: 4),
                      series: <SplineAreaSeries<Data, DateTime>>[
                        SplineAreaSeries<Data, DateTime>(
                          dataSource: _chartData,
                          xValueMapper: (sales, index) => sales.x,
                          yValueMapper: (sales, index) => sales.y,
                        )
                      ],
                    ),
                    height: 200,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Storing the spline series data points.
class Data {
  /// Initialize the instance of the [Data] class.
  Data({required this.x, required this.y});

  /// Spline series x points.
  final DateTime x;

  /// Spline series y points.
  final double y;
}
