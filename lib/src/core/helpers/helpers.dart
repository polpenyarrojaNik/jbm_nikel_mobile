import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
