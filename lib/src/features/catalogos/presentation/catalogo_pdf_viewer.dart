import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../../generated/l10n.dart';
import '../../../core/helpers/helpers.dart';
import '../../../core/presentation/toasts.dart';
import 'catalogo_search_controller.dart';

@RoutePage()
class CatalogoPdfViewerPage extends StatefulWidget {
  const CatalogoPdfViewerPage({super.key, required this.adjuntoData});

  final CatalogoAdjuntoData adjuntoData;

  @override
  State<CatalogoPdfViewerPage> createState() => _CatalogoPdfViewerPageState();
}

class _CatalogoPdfViewerPageState extends State<CatalogoPdfViewerPage> {
  bool _isSaving = false;

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    final file = widget.adjuntoData.file!;

    return Scaffold(
      appBar: AppBar(
        title: Text(_getPdfFileName(file.path)),
        actions: [
          if (widget.adjuntoData.descarga)
            IconButton(
              tooltip: S.of(context).saveAs,
              onPressed: _isSaving ? null : () => _downloadCatalogo(context),
              icon: _isSaving
                  ? const SizedBox.square(
                      dimension: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.download_outlined),
            ),
        ],
      ),
      body: Padding(
        padding: isLandscape ? EdgeInsets.zero : const EdgeInsets.all(16),
        child: SfPdfViewer.file(
          file,
          key: ValueKey(isLandscape),
          canShowScrollHead: !isLandscape,
          pageLayoutMode: PdfPageLayoutMode.continuous,
          pageSpacing: isLandscape ? 0 : 8,
          scrollDirection: isLandscape
              ? PdfScrollDirection.horizontal
              : PdfScrollDirection.vertical,
        ),
      ),
    );
  }

  Future<void> _downloadCatalogo(BuildContext context) async {
    setState(() {
      _isSaving = true;
    });

    try {
      final file = widget.adjuntoData.file!;
      final savedFileUri = await saveFileToDeviceDocuments(
        file,
        fileName: _getPdfFileName(file.path),
        allowedExtensions: const ['pdf'],
      );

      if (!context.mounted || savedFileUri == null) {
        return;
      }

      await showToast('Archivo guardado correctamente', context);
    } catch (_) {
      if (!context.mounted) {
        return;
      }

      await showToast('No se pudo guardar el archivo', context);
    } finally {
      if (mounted) {
        setState(() {
          _isSaving = false;
        });
      }
    }
  }

  String _getPdfFileName(String path) {
    return p.basename(path);
  }
}
