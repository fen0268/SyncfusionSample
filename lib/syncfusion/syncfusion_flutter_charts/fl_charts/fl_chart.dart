import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlChart extends StatefulWidget {
  const FlChart({super.key});

  @override
  State<FlChart> createState() => _FlChartState();
}

class _FlChartState extends State<FlChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: const [
                _SalesData('Jan', 303),
                _SalesData('Feb', 314),
                _SalesData('Mar', 334),
                _SalesData('Apr', 367),
                _SalesData('May', 380)
              ],
            )
          ],
        ),
      ),
    );
  }
}
