import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/domain/country.dart';

String dateFormatter(String dateStr, {bool allDay = false}) {
  DateFormat formatter;
  DateTime date;

  formatter = DateFormat(
      (!allDay) ? 'dd/MM/yyyy' : 'dd/MM/yyyy HH:mm', Intl.getCurrentLocale());

  date = DateTime.parse(dateStr);

  return formatter.format(date);
}

String numberFormat(double number) {
  NumberFormat formatter = NumberFormat.decimalPattern(Intl.getCurrentLocale());

  return formatter.format(number);
}

String formatZipCodeAndCity({
  String? zipCode,
  String? city,
}) {
  String zipCodeAndCity = '';
  if (zipCode != null) zipCodeAndCity = zipCodeAndCity + zipCode;
  if (zipCode != null && city != null) {
    zipCodeAndCity = '$zipCodeAndCity - ';
  }
  if (city != null) zipCodeAndCity = zipCodeAndCity + city;
  return zipCodeAndCity;
}

String formatProvinceAndCountry({
  String? province,
  Country? country,
}) {
  String provinceAndCountry = '';
  if (province != null) provinceAndCountry = provinceAndCountry + province;
  if (province != null && country != null) {
    provinceAndCountry = '$provinceAndCountry ';
  }
  if (country != null) {
    provinceAndCountry = '$provinceAndCountry(${country.description})';
  }
  return provinceAndCountry;
}

IconData? getIconFromExtension(String path) {
  final extension = path.split(".").last;
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

String getFileName(String path) {
  return path.split('/').last;
}

String dtoText(BuildContext context, double discount1, double discount2,
    double discount3) {
  var stringText = '';

  if (discount1 != 0 && discount2 != 0 && discount3 != 0.0) {
    stringText =
        'Dto: ${numberFormat(discount1)}% + ${numberFormat(discount2)}% + ${numberFormat(discount3)}%';
  } else if (discount1 != 0 && discount2 != 0) {
    stringText =
        'Dto: ${numberFormat(discount1)}% + ${numberFormat(discount2)}% ';
  } else if (discount1 != 0) {
    stringText = 'Dto: ${numberFormat(discount1)}% ';
  }

  return stringText;
}
