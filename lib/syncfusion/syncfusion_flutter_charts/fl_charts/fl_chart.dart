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
                FlSpot(1, 303),
                FlSpot(2, 334),
                FlSpot(3, 367),
                FlSpot(4, 380),
              ],
            )
          ],
        ),
      ),
    );
  }
}
