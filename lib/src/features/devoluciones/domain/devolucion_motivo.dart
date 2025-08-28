import 'package:freezed_annotation/freezed_annotation.dart';

part 'devolucion_motivo.freezed.dart';

@freezed
abstract class DevolucionMotivo with _$DevolucionMotivo {
  const DevolucionMotivo._();
  const factory DevolucionMotivo({
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
    required DateTime lastUpdated,
    required bool deleted,
  }) = _DevolucionMotivo;
}
