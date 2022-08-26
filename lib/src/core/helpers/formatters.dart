import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/domain/country.dart';

String dateFormatter(String dateStr) {
  DateFormat formatter;
  DateTime date;

  formatter = DateFormat.yMd(Intl.getCurrentLocale());

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
