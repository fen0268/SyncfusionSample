import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

/// https://pub.dev/packages/syncfusion_flutter_maps
class SyncfusionFlutterMaps extends StatefulWidget {
  const SyncfusionFlutterMaps({super.key});

  @override
  State<SyncfusionFlutterMaps> createState() => _SyncfusionFlutterMapsState();
}

class _SyncfusionFlutterMapsState extends State<SyncfusionFlutterMaps> {
  _SyncfusionFlutterMapsState();
  late List<Model> _data;
  late MapShapeSource _mapSource;

  @override
  void initState() {
    _data = const <Model>[
      Model(
        'New South Wales',
        Color.fromRGBO(255, 215, 0, 1),
        '       New\nSouth Wales',
      ),
      Model('Queensland', Color.fromRGBO(72, 209, 204, 1), 'Queensland'),
      Model(
        'Northern Territory',
        Color.fromRGBO(255, 78, 66, 1),
        'Northern\nTerritory',
      ),
      Model('Victoria', Color.fromRGBO(171, 56, 224, 0.75), 'Victoria'),
      Model(
        'South Australia',
        Color.fromRGBO(126, 247, 74, 0.75),
        'South Australia',
      ),
      Model(
        'Western Australia',
        Color.fromRGBO(79, 60, 201, 0.7),
        'Western Australia',
      ),
      Model('Tasmania', Color.fromRGBO(99, 164, 230, 1), 'Tasmania'),
      Model('Australian Capital Territory', Colors.teal, 'ACT')
    ];

    _mapSource = MapShapeSource.asset(
      'assets/australia.json',
      shapeDataField: 'STATE_NAME',
      dataCount: _data.length,
      primaryValueMapper: (index) => _data[index].state,
      dataLabelMapper: (index) => _data[index].stateCode,
      shapeColorValueMapper: (index) => _data[index].color,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 520,
        child: Center(
          child: SfMaps(
            layers: <MapShapeLayer>[
              MapShapeLayer(
                source: _mapSource,
                showDataLabels: true,
                legend: const MapLegend(MapElement.shape),
                tooltipSettings: MapTooltipSettings(
                  color: Colors.grey[700],
                  strokeColor: Colors.white,
                  strokeWidth: 2,
                ),
                strokeColor: Colors.white,
                strokeWidth: 0.5,
                shapeTooltipBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      _data[index].stateCode,
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
                dataLabelSettings: MapDataLabelSettings(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Model {
  const Model(this.state, this.color, this.stateCode);
  final String state;
  final Color color;
  final String stateCode;
}
