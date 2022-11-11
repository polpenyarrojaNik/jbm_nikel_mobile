import 'dart:ui';

import 'package:money2/money2.dart';

class BarDataArticulosMes {
  const BarDataArticulosMes(this.color, this.value, this.shadowValue);
  final Color color;
  final int value;
  final int shadowValue;
}

class BarDataClientesMes {
  const BarDataClientesMes(this.color, this.value, this.shadowValue);
  final Color color;
  final Money value;
  final Money shadowValue;
}
