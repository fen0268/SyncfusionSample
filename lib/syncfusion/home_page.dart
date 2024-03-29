import 'package:flutter/material.dart';

import 'syncfusion_flutter_barcodes/syncfusion_flutter_barcodes.dart';
import 'syncfusion_flutter_calendar/syncfusion_flutter_calendar.dart';
import 'syncfusion_flutter_charts/syncfusion_flutter_charts.dart';
import 'syncfusion_flutter_datagrid/syncfusion_flutter_datagrid.dart';
import 'syncfusion_flutter_datepicker/syncfusion_flutter_datepicker.dart';
import 'syncfusion_flutter_gauges/syncfusion_flutter_gauges.dart';
import 'syncfusion_flutter_maps/syncfusion_flutter_maps.dart';
import 'syncfusion_flutter_pdfviewer/syncfusion_flutter_pdfviewer.dart';
import 'syncfusion_flutter_signaturepad/syncfusion_flutter_signaturepad.dart';
import 'syncfusion_flutter_sliders/syncfusion_flutter_sliders.dart';
import 'syncfusion_flutter_treemap/syncfusion_flutter_treemap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///
              ListTile(
                title: const Text('SfBarcodes'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterBarcodes(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfCalendar'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterCalendar(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfCharts'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterCharts(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfDatagrid'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterDatagrid(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfDatepicker'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterDatepicker(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfGauges'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterGauges(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfMaps'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterMaps(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfPdfviewer'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterPdfviewer(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfSignaturepad'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterSignaturepad(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfSliders'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterSliders(),
                  ),
                ),
              ),

              ///
              ListTile(
                title: const Text('SfTreemap'),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SyncfusionFlutterTreemap(),
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
