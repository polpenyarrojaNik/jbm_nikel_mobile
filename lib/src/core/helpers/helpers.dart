import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/experimental/mutation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../generated/l10n.dart';
import '../../features/cliente/domain/cliente.dart';

void navigateToEmailApp(String mail) async {
  final params = Uri(scheme: 'mailto', path: mail);
  await launchUrl(params, mode: LaunchMode.externalApplication);
}

void openPhoneCall(String phone) async {
  final params = Uri(scheme: 'tel', path: phone);
  await launchUrl(params, mode: LaunchMode.externalApplication);
}

IconData getIconFromFileName(String? fileName) {
  final extension = getExtension(fileName);
  if (extension == null) {
    return MdiIcons.fileOutline;
  }
  if (extension == 'pdf') {
    return MdiIcons.filePdfBox;
  } else if (extension.contains('doc') ||
      extension.contains('docx') ||
      extension.contains('odt')) {
    return MdiIcons.fileWordOutline;
  } else if (extension.contains('xls')) {
    return MdiIcons.fileExcelOutline;
  } else if (extension.contains('mp3') || extension.contains('wav')) {
    return MdiIcons.musicBoxOutline;
  } else if (extension.contains('zip') || extension.contains('rar')) {
    return MdiIcons.folderZipOutline;
  } else if (extension.contains('ppt')) {
    return MdiIcons.filePowerpointOutline;
  } else if (extension.contains('mp4')) {
    return MdiIcons.fileVideoOutline;
  } else if (extension.contains('csv')) {
    return FontAwesomeIcons.fileCsv;
  } else if (extension.contains('jpg') ||
      extension.contains('png') ||
      extension.contains('jpeg')) {
    return MdiIcons.imageOutline;
  }
  return MdiIcons.fileOutline;
}

String? getExtension(String? fileName) {
  if (fileName == null || fileName.trim().isEmpty) {
    return null;
  }

  final lastDot = fileName.lastIndexOf('.', fileName.length - 1);
  if (lastDot != -1) {
    final extension = fileName.substring(lastDot + 1);
    return extension.toLowerCase();
  }
  return null;
}

Icon getTendenciaClienteIcon(TendenciaCliente tendencia) {
  return Icon(
    getTendenciaClienteIconData(tendencia),
    color: getTendenciaClienteColor(tendencia),
  );
}

IconData getTendenciaClienteIconData(TendenciaCliente tendencia) {
  switch (tendencia) {
    case TendenciaCliente.up:
      return MdiIcons.chevronUpCircle;
    case TendenciaCliente.down:
      return MdiIcons.chevronDownCircle;
    case TendenciaCliente.equal:
      return Icons.drag_handle;
  }
}

Color getTendenciaClienteColor(TendenciaCliente tendencia) {
  switch (tendencia) {
    case TendenciaCliente.up:
      return Colors.green;
    case TendenciaCliente.down:
      return Colors.red;
    case TendenciaCliente.equal:
      return Colors.grey;
  }
}

String getAddressText(
  String? streetAddress,
  String? zipCode,
  String? city,
  String? state,
  String? country,
) {
  var val = '';
  if (streetAddress != null) {
    val = streetAddress;
  }
  if (zipCode != null) {
    if (streetAddress != null) {
      val += '\n$zipCode';
    } else {
      val = zipCode;
    }
  }
  if (city != null) {
    if (streetAddress != null || zipCode != null) {
      val += '\n$city';
    } else {
      val += city;
    }
  }
  if (state != null) {
    if (city != null) {
      val += ' - $state';
    } else {
      if (streetAddress != null || zipCode != null) {
        val += '\n$state';
      } else {
        val += state;
      }
    }
  }

  if (country != null) {
    if (streetAddress != null ||
        zipCode != null ||
        city != null ||
        state != null) {
      val += '\n$country';
    } else {
      val += country;
    }
  }
  return val;
}

Future<String?> saveFromAssets(String filename, String mimeType) async {
  // 1) Cargar bytes del asset
  final data = await rootBundle.load('assets/templates/$filename');
  final bytes = data.buffer.asUint8List();

  // 2) Pedir al usuario dónde guardarlo (Save As)
  final path = await FilePicker.platform.saveFile(
    dialogTitle: S.current.saveAs,
    fileName: filename,
    type: FileType.custom,
    allowedExtensions: [mimeType],
    bytes: bytes,
  );

  return path;
}

IconData getIconFromExtension(String? extension) {
  if (extension == null) {
    return MdiIcons.fileOutline;
  }
  if (extension == 'pdf') {
    return MdiIcons.filePdfBox;
  } else if (extension.contains('doc') ||
      extension.contains('docx') ||
      extension.contains('odt')) {
    return MdiIcons.fileWordOutline;
  } else if (extension.contains('xls')) {
    return MdiIcons.fileExcelOutline;
  } else if (extension.contains('mp3') || extension.contains('wav')) {
    return MdiIcons.musicBoxOutline;
  } else if (extension.contains('zip') || extension.contains('rar')) {
    return MdiIcons.folderZipOutline;
  } else if (extension.contains('ppt')) {
    return MdiIcons.filePowerpointOutline;
  } else if (extension.contains('mp4')) {
    return MdiIcons.fileVideoOutline;
  } else if (extension.contains('csv')) {
    return FontAwesomeIcons.fileCsv;
  } else if (extension.contains('jpg') ||
      extension.contains('png') ||
      extension.contains('jpeg')) {
    return MdiIcons.imageOutline;
  }
  return MdiIcons.fileOutline;
}

Future<void> runMutationSafe<T>(
  WidgetRef ref,
  Mutation<T> mutation,
  Future<T> Function(MutationTransaction tsx) action,
) async {
  try {
    await mutation.run(ref, action);
  } catch (_) {}
}
