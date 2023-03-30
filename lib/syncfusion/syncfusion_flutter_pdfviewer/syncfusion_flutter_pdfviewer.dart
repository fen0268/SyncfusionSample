import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// https://pub.dev/packages/syncfusion_flutter_pdfviewer
class SyncfusionFlutterPdfviewer extends StatefulWidget {
  const SyncfusionFlutterPdfviewer({super.key});

  @override
  State<SyncfusionFlutterPdfviewer> createState() =>
      _SyncfusionFlutterPdfviewerState();
}

class _SyncfusionFlutterPdfviewerState
    extends State<SyncfusionFlutterPdfviewer> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter PDF Viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
