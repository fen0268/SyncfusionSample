import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_treemap/treemap.dart';

///https://pub.dev/packages/syncfusion_flutter_treemap
class SyncfusionFlutterTreemap extends StatefulWidget {
  const SyncfusionFlutterTreemap({super.key});

  @override
  State<SyncfusionFlutterTreemap> createState() =>
      _SyncfusionFlutterTreemapState();
}

class _SyncfusionFlutterTreemapState extends State<SyncfusionFlutterTreemap> {
  late List<SocialMediaUsers> _source;

  @override
  void initState() {
    _source = const <SocialMediaUsers>[
      SocialMediaUsers('India', 'Facebook', 25.4),
      SocialMediaUsers('USA', 'Instagram', 19.11),
      SocialMediaUsers('Japan', 'Facebook', 13.3),
      SocialMediaUsers('Germany', 'Instagram', 10.65),
      SocialMediaUsers('France', 'Twitter', 7.54),
      SocialMediaUsers('UK', 'Instagram', 4.93),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Treemap demo')),
      body: SfTreemap(
        dataCount: _source.length,
        weightValueMapper: (index) {
          return _source[index].usersInMillions;
        },
        levels: <TreemapLevel>[
          TreemapLevel(
            groupMapper: (index) {
              return _source[index].country;
            },
            labelBuilder: (context, tile) {
              return Padding(
                padding: const EdgeInsets.all(2.5),
                child: Text(
                  tile.group,
                  style: const TextStyle(color: Colors.black),
                ),
              );
            },
            tooltipBuilder: (context, tile) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '''Country          : ${tile.group}\nSocial media : ${tile.weight}M''',
                  style: const TextStyle(color: Colors.black),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// Represents the class for social media users.
class SocialMediaUsers {
  /// Constructor of [SocialMediaUsers].
  const SocialMediaUsers(this.country, this.socialMedia, this.usersInMillions);

  /// Specifies the country.
  final String country;

  /// Specifies the type of social media.
  final String socialMedia;

  /// Specifies the users count.
  final double usersInMillions;
}
