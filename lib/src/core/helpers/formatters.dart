import 'package:intl/intl.dart';

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
