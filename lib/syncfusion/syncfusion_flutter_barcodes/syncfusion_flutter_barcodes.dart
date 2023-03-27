import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

/// https://pub.dev/packages/syncfusion_flutter_barcodes
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
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// QRコードのわかりやすいまとめ記事
              /// https://aimjal.co.jp/gijutu/2jigen/2jigen_k.html
              SfBarcodeGenerator(
                value: 'https://pub.dev/',
                symbology: QRCode(),
                showValue: true,
              ),
              SfBarcodeGenerator(
                value: 'https://pub.dev/',
                symbology: DataMatrix(),
                showValue: true,
              ),
              SfBarcodeGenerator(
                value: '123456',
                symbology: UPCE(),
                showValue: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
