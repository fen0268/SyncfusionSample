import 'package:flutter/material.dart';

import 'syncfusion_flutter_calendar/syncfusion_flutter_calendar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: const Text('SfCalendar'),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SyncfusionFlutterCalendar(),
              ),
            ),
          ),
          const ListTile(),
        ],
      ),
    );
  }
}
