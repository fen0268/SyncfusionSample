import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SyncfusionFlutterCharts extends StatefulWidget {
  const SyncfusionFlutterCharts({super.key});

  @override
  State<SyncfusionFlutterCharts> createState() =>
      _SyncfusionFlutterChartsState();
}

class _SyncfusionFlutterChartsState extends State<SyncfusionFlutterCharts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SfCartesianChart(),
        ],
      ),
    );
  }
}
