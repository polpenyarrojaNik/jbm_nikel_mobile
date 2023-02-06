import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CatalogoPdfViewerPage extends StatelessWidget {
  const CatalogoPdfViewerPage({super.key, required this.pdfFile});

  final File pdfFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getPdfFileName(pdfFile.path)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SfPdfViewer.file(
          pdfFile,
          pageSpacing: 8,
        ),
      ),
    );
  }

  String getPdfFileName(String path) {
    final pathArrayList = path.split('/');

    return pathArrayList.last;
  }
}
