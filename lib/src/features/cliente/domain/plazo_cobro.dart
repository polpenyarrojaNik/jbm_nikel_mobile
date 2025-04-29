import 'package:freezed_annotation/freezed_annotation.dart';

part 'plazo_cobro.freezed.dart';

@freezed
class PlazoDeCobro with _$PlazoDeCobro {
  const PlazoDeCobro._();
  const factory PlazoDeCobro({
    required String id,
    required String descripcionES,
    String? descripcionEN,
    String? descripcionFR,
    String? descripcionDE,
    String? descripcionCA,
    String? descripcionGB,
    String? descripcionHU,
    String? descripcionIT,
    String? descripcionNL,
    String? descripcionPL,
    String? descripcionPT,
    String? descripcionRO,
    String? descripcionRU,
    String? descripcionCN,
    String? descripcionEL,
    required DateTime lastUpdate,
    required bool deleted,
  }) = _PlazoDeCobro;
}
