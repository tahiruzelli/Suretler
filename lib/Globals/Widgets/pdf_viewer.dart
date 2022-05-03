import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  late String link;
  PdfViewer(this.link);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfPdfViewer.network(link),
    );
  }
}
