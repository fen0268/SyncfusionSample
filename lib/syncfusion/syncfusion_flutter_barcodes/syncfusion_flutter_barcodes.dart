import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class SyncfusionFlutterBarcodes extends StatefulWidget {
  const SyncfusionFlutterBarcodes({super.key});

  @override
  State<SyncfusionFlutterBarcodes> createState() =>
      _SyncfusionFlutterBarcodesState();
}

class _SyncfusionFlutterBarcodesState extends State<SyncfusionFlutterBarcodes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfBarcodeGenerator(
          value: 'https://pub.dev/packages/flutter_reflective_screensaver',
          symbology: QRCode(),
          showValue: true,
        ),
      ),
    );
  }
}
