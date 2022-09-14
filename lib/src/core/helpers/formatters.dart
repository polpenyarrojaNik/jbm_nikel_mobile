import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';

import '../../features/articulos/domain/articulo.dart';

String dateFormatter(String dateStr, {bool allDay = false}) {
  DateTime date;

  final formatter = DateFormat.yMd(Intl.getCurrentLocale()).add_Hm();

  date = DateTime.parse(dateStr);

  return formatter.format(date);
}

String numberFormat(double number) {
  NumberFormat formatter = NumberFormat.decimalPattern(Intl.getCurrentLocale());

  return formatter.format(number);
}

String formatCodigoPostalAndPoblacion({
  String? codigoPostal,
  String? poblacion,
}) {
  String codigoPostalAndCity = '';
  if (codigoPostal != null) {
    codigoPostalAndCity = codigoPostalAndCity + codigoPostal;
  }
  if (codigoPostal != null && poblacion != null) {
    codigoPostalAndCity = '$codigoPostalAndCity - ';
  }
  if (poblacion != null) codigoPostalAndCity = codigoPostalAndCity + poblacion;
  return codigoPostalAndCity;
}

String formatProvinciaAndPais({
  String? province,
  Pais? pais,
}) {
  String provinceAndPais = '';
  if (province != null) provinceAndPais = provinceAndPais + province;
  if (province != null && pais != null) {
    provinceAndPais = '$provinceAndPais ';
  }
  if (pais != null) {
    provinceAndPais = '$provinceAndPais(${pais.descripcion})';
  }
  return provinceAndPais;
}

IconData? getIconoFromExtension(String path) {
  final extension = path.split('.').last;
  if (extension == 'pdf') {
    return FontAwesomeIcons.filePdf;
  } else if (extension == 'doc' || extension == 'docx' || extension == 'odt') {
    return FontAwesomeIcons.fileWord;
  } else if (extension == 'xls') {
    return FontAwesomeIcons.fileExcel;
  } else if (extension == 'mp3' || extension == 'wav') {
    return FontAwesomeIcons.fileAudio;
  } else if (extension == 'zip' || extension == 'rar') {
    return FontAwesomeIcons.fileZipper;
  } else if (extension == 'ppt') {
    return FontAwesomeIcons.filePowerpoint;
  } else if (extension == 'mp4') {
    return FontAwesomeIcons.fileVideo;
  } else if (extension == 'csv') {
    return FontAwesomeIcons.fileCsv;
  } else if (extension == 'png' ||
      extension == 'jpg' ||
      extension == 'jpeg' ||
      extension == 'heic' ||
      extension == 'HEIC') {
    return FontAwesomeIcons.image;
  } else {
    return FontAwesomeIcons.file;
  }
}

String getNombreArchivo(String path) {
  return path.split('/').last;
}

String dtoText(BuildContext context, double descuento1, double descuento2,
    double descuento3) {
  var stringText = '';

  if (descuento1 != 0 && descuento2 != 0 && descuento3 != 0.0) {
    stringText =
        'Dto: ${numberFormat(descuento1)}% + ${numberFormat(descuento2)}% + ${numberFormat(descuento3)}%';
  } else if (descuento1 != 0 && descuento2 != 0) {
    stringText =
        'Dto: ${numberFormat(descuento1)}% + ${numberFormat(descuento2)}% ';
  } else if (descuento1 != 0) {
    stringText = 'Dto: ${numberFormat(descuento1)}% ';
  }

  return stringText;
}

String getDescriptionInLocalLanguage({required Articulo articulo}) {
  final currentLocale = Intl.getCurrentLocale();
  print(currentLocale);

  if (currentLocale == 'es') {
    return articulo.descripcionES;
  } else if (currentLocale == 'en' && articulo.descripcionEN != null) {
    return articulo.descripcionEN!;
  }
  //  else if (currentLocale == 'fr' && articulo.descripcionFR != null) {
  //   return articulo.descripcionFR!;
  // } else if (currentLocale == 'de' && articulo.descripcionDE != null) {
  //   return articulo.descripcionDE!;
  // } else if (currentLocale == 'ca' && articulo.descripcionCA != null) {
  //   return articulo.descripcionCA!;
  // } else if (currentLocale == 'gb' && articulo.descripcionGB != null) {
  //   return articulo.descripcionGB!;
  // } else if (currentLocale == 'hu' && articulo.descripcionHU != null) {
  //   return articulo.descripcionHU!;
  // } else if (currentLocale == 'it' && articulo.descripcionIT != null) {
  //   return articulo.descripcionIT!;
  // } else if (currentLocale == 'nl' && articulo.descripcionNL != null) {
  //   return articulo.descripcionNL!;
  // } else if (currentLocale == 'pl' && articulo.descripcionPL != null) {
  //   return articulo.descripcionPL!;
  // } else if (currentLocale == 'pt' && articulo.descripcionPT != null) {
  //   return articulo.descripcionPT!;
  // } else if (currentLocale == 'ro' && articulo.descripcionRO != null) {
  //   return articulo.descripcionRO!;
  // } else if (currentLocale == 'ru' && articulo.descripcionRU != null) {
  //   return articulo.descripcionRU!;
  // } else if (currentLocale == 'cn' && articulo.descripcionCN != null) {
  //   return articulo.descripcionCN!;
  // } else if (currentLocale == 'el' && articulo.descripcionEL != null) {
  //   return articulo.descripcionEL!;
  //}
  return articulo.descripcionES;
}

String? getSummaryInLocalLanguage({required Articulo articulo}) {
  final currentLocale = Intl.getCurrentLocale();
  print(currentLocale);

  if (currentLocale == 'es' && articulo.resumenES != null) {
    return articulo.resumenES!;
  } else if (currentLocale == 'en' && articulo.resumenEN != null) {
    return articulo.resumenEN!;
  }
  //else if (currentLocale == 'fr' && articulo.resumenFR != null) {
  //   return articulo.resumenFR!;
  // } else if (currentLocale == 'de' && articulo.resumenDE != null) {
  //   return articulo.resumenDE!;
  // } else if (currentLocale == 'ca' && articulo.resumenCA != null) {
  //   return articulo.resumenCA!;
  // } else if (currentLocale == 'gb' && articulo.resumenGB != null) {
  //   return articulo.resumenGB!;
  // } else if (currentLocale == 'hu' && articulo.resumenHU != null) {
  //   return articulo.resumenHU!;
  // } else if (currentLocale == 'it' && articulo.resumenIT != null) {
  //   return articulo.resumenIT!;
  // } else if (currentLocale == 'nl' && articulo.resumenNL != null) {
  //   return articulo.resumenNL!;
  // } else if (currentLocale == 'pl' && articulo.resumenPL != null) {
  //   return articulo.resumenPL!;
  // } else if (currentLocale == 'pt' && articulo.resumenPT != null) {
  //   return articulo.resumenPT!;
  // } else if (currentLocale == 'ro' && articulo.resumenRO != null) {
  //   return articulo.resumenRO!;
  // } else if (currentLocale == 'ru' && articulo.resumenRU != null) {
  //   return articulo.resumenRU!;
  // } else if (currentLocale == 'cn' && articulo.resumenCN != null) {
  //   return articulo.resumenCN!;
  // } else if (currentLocale == 'el' && articulo.resumenEL != null) {
  //   return articulo.resumenEL!;
  // } else if (articulo.resumenES != null) {
  //   return articulo.resumenES;
  // }
  return null;
}
