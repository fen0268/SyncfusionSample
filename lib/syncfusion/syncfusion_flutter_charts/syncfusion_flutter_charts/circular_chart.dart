import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularChart extends StatefulWidget {
  const CircularChart({super.key});

  @override
  State<CircularChart> createState() => _CircularChartState();
}

class _CircularChartState extends State<CircularChart> {
  List<_PieData> data = [
    _PieData('Jan', 303),
    _PieData('Feb', 314),
    _PieData('Mar', 334),
    _PieData('Apr', 367),
    _PieData('May', 380)
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfCircularChart(
        title: ChartTitle(text: 'Sales by sales person'),
        legend: Legend(isVisible: true),
        series: <PieSeries<_PieData, String>>[
          PieSeries<_PieData, String>(
            explode: true,
            explodeIndex: 0,
            dataSource: data,
            xValueMapper: (data, _) => data.xData,
            yValueMapper: (data, _) => data.yData,
            dataLabelMapper: (data, _) => data.text,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
          ),
        ],
      ),
    );
  }
}

class _PieData {
  _PieData(this.xData, this.yData);
  final String xData;
  final num yData;
  String? text;
}
