import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChart extends StatefulWidget {
  const CartesianChart({super.key});

  @override
  State<CartesianChart> createState() => _CartesianChartState();
}

class _CartesianChartState extends State<CartesianChart> {
  List<_SalesData> data = [
    _SalesData('Jan', 303),
    _SalesData('Feb', 314),
    _SalesData('Mar', 334),
    _SalesData('Apr', 367),
    _SalesData('May', 380)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      body: Column(
        children: [
          SfCartesianChart(
            primaryXAxis: CategoryAxis(),

            /// 凡例のテキスト
            title: ChartTitle(text: 'Flutter 大学のコミュニティの人数'),

            /// 凡例を表示するかどうか、どのように表示するか
            legend: Legend(isVisible: false),

            /// グラフの x, y の値が交わるところでタップするとダイアログで表示してくれる
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<_SalesData, String>>[
              LineSeries<_SalesData, String>(
                dataSource: data,
                xValueMapper: (sales, _) => sales.year,
                yValueMapper: (sales, _) => sales.sales,
                name: '人数',
                // Enable data label
                dataLabelSettings: const DataLabelSettings(isVisible: true),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
