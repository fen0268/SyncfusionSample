import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

/// https://pub.dev/packages/syncfusion_flutter_signaturepad
class SyncfusionFlutterSignaturepad extends StatefulWidget {
  const SyncfusionFlutterSignaturepad({super.key});

  @override
  State<SyncfusionFlutterSignaturepad> createState() =>
      _SyncfusionFlutterSignaturepadState();
}

class _SyncfusionFlutterSignaturepadState
    extends State<SyncfusionFlutterSignaturepad> {
  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  void _handleClearButtonPressed() {
    signatureGlobalKey.currentState!.clear();
  }

  Future<void> _handleSaveButtonPressed() async {
    final data = await signatureGlobalKey.currentState!.toImage(pixelRatio: 3);
    final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Container(
                color: Colors.grey[300],
                child: Image.memory(bytes!.buffer.asUint8List()),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: SfSignaturePad(
                key: signatureGlobalKey,
                backgroundColor: Colors.white,
                strokeColor: Colors.black,
                minimumStrokeWidth: 1,
                maximumStrokeWidth: 4,
              ),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: <Widget>[
              TextButton(
                child: const Text('ToImage'),
                onPressed: _handleSaveButtonPressed,
              ),
              TextButton(
                child: const Text('Clear'),
                onPressed: _handleClearButtonPressed,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
