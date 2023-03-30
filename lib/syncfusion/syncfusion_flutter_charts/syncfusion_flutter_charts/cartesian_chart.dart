import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartesianChart extends StatefulWidget {
  const CartesianChart({super.key});

  @override
  State<CartesianChart> createState() => _CartesianChartState();
}

class _CartesianChartState extends State<CartesianChart> {
  List<SalesData> data = [
    SalesData('Jan', 303),
    SalesData('Feb', 314),
    SalesData('Mar', 334),
    SalesData('Apr', 367),
    SalesData('May', 380)
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
            series: <ChartSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
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

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
