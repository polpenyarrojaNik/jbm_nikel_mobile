import 'package:auto_route/auto_route.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

@RoutePage()
class CatalogoPdfViewerPage extends StatelessWidget {
  const CatalogoPdfViewerPage({super.key, required this.pdfFile});

  final File pdfFile;

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.orientationOf(context) == Orientation.landscape;

    return Scaffold(
      appBar: isLandscape
          ? null
          : AppBar(title: Text(getPdfFileName(pdfFile.path))),
      body: Stack(
        children: [
          Padding(
            padding: isLandscape ? EdgeInsets.zero : const EdgeInsets.all(16),
            child: SfPdfViewer.file(
              pdfFile,
              key: ValueKey(isLandscape),
              canShowScrollHead: !isLandscape,
              pageLayoutMode: isLandscape
                  ? PdfPageLayoutMode.single
                  : PdfPageLayoutMode.continuous,
              pageSpacing: isLandscape ? 0 : 8,
              scrollDirection: isLandscape
                  ? PdfScrollDirection.horizontal
                  : PdfScrollDirection.vertical,
            ),
          ),
          if (isLandscape)
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: IconButton.filledTonal(
                  onPressed: () => Navigator.of(context).maybePop(),
                  icon: const Icon(Icons.arrow_back),
                  tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                ),
              ),
            ),
        ],
      ),
    );
  }

  String getPdfFileName(String path) {
    final pathArrayList = path.split('/');

    return pathArrayList.last;
  }
}
