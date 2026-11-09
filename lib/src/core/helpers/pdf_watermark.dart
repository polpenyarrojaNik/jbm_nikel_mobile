import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:syncfusion_flutter_pdf/pdf.dart';

/// Añade la marca de agua [userId] al pie de cada página del PDF en [filePath]
/// y sobrescribe el fichero.
///
/// Se ejecuta en un isolate aparte: `PdfDocument.save()` es async solo de
/// nombre (encadena microtasks síncronas) y con catálogos grandes bloquea el
/// hilo de UI (App Hang en `PdfWriter._addDataInChunks`).
Future<void> watermarkPdfFile(String filePath, String userId) {
  return Isolate.run(() => _watermarkPdfFileSync(filePath, userId));
}

Future<void> _watermarkPdfFileSync(String filePath, String userId) async {
  final file = File(filePath);
  final document = PdfDocument(inputBytes: file.readAsBytesSync());
  try {
    final font = PdfStandardFont(PdfFontFamily.helvetica, 9);
    final brush = PdfSolidBrush(PdfColor(105, 105, 105));
    for (var i = 0; i < document.pages.count; i++) {
      final page = document.pages[i];
      final pageSize = page.size;
      page.graphics.drawString(
        userId,
        font,
        brush: brush,
        bounds: Rect.fromLTWH(8, pageSize.height - 16, 50, 20),
      );
    }
    final bytes = await document.save();
    file.writeAsBytesSync(bytes, flush: true);
  } finally {
    document.dispose();
  }
}
