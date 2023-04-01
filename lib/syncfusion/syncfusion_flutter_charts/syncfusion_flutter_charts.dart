import 'package:flutter/material.dart';

import 'syncfusion_flutter_charts/cartesian_chart.dart';
import 'syncfusion_flutter_charts/circular_chart.dart';

/// https://pub.dev/packages/syncfusion_flutter_charts
class SyncfusionFlutterCharts extends StatefulWidget {
  const SyncfusionFlutterCharts({super.key});

  @override
  State<SyncfusionFlutterCharts> createState() =>
      _SyncfusionFlutterChartsState();
}

/// グラフ

class _SyncfusionFlutterChartsState extends State<SyncfusionFlutterCharts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const Text('Line'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const CartesianChart(),
              ),
            ),
          ),
          ListTile(
            title: const Text('CircularChart'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CircularChart()),
            ),
          ),ListTile(
            title: const Text('fl_chart'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CircularChart()),
            ),
          ),
        ],
      ),
    );
  }
}
