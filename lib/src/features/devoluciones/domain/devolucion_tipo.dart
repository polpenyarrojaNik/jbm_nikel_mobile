import 'package:freezed_annotation/freezed_annotation.dart';

part 'devolucion_tipo.freezed.dart';

@freezed
class DevolucionTipo with _$DevolucionTipo {
  const DevolucionTipo._();
  const factory DevolucionTipo(
      {required String id,
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
      required DateTime lastUpdated,
      required bool deleted}) = _DevolucionTipo;
}
