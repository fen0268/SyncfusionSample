import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

/// https://pub.dev/packages/syncfusion_flutter_sliders
class SyncfusionFlutterSliders extends StatefulWidget {
  const SyncfusionFlutterSliders({super.key});

  @override
  State<SyncfusionFlutterSliders> createState() =>
      _SyncfusionFlutterSlidersState();
}

class _SyncfusionFlutterSlidersState extends State<SyncfusionFlutterSliders> {
  double sliValue = 30;
  SfRangeValues _values = const SfRangeValues(4.0, 48.0);
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
              child: Column(
                children: [
                  /// スライダー
                  Slider(
                    min: 0,
                    max: 100,
                    value: sliValue,
                    onChanged: (values) {
                      setState(() {
                        sliValue = values;
                      });
                    },
                  ),
                  SfSlider.vertical(
                    min: 0.0,
                    max: 100.0,
                    value: sliValue,
                    onChangeStart: (value) {
                      setState(() {
                        sliValue = value;
                      });
                    },
                    onChangeEnd: (value) {
                      setState(() {
                        sliValue = value;
                      });
                    },
                    onChanged: (values) {
                      setState(() {
                        sliValue = values;
                      });
                    },
                  ),

                  /// レンジスライダー
                  SfRangeSlider(
                    min: 0,
                    max: 100,
                    interval: 1,
                    onChangeStart: (value) {
                      setState(
                        () {
                          _values = value;
                        },
                      );
                    },
                    onChangeEnd: (value) {
                      setState(
                        () {
                          _values = value;
                        },
                      );
                    },
                    values: _values,
                    onChanged: (values) {
                      setState(
                        () {
                          _values = values;
                        },
                      );
                    },
                  ),
                ],
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
