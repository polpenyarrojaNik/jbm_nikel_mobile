import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita.freezed.dart';

@freezed
class Visita with _$Visita {
  const Visita._();
  const factory Visita({
    String? id,
    required String clienteId,
    String? nombreCliente,
    required DateTime fecha,
    required String numEmpl,
    String? contacto,
    String? resumen,
    required double latitud,
    required double longitud,
    String? visitaAppId,
    required DateTime lastUpdated,
    required bool deleted,
    required bool enviada,
    required bool tratada,
    String? errorSyncMessage,
  }) = _Visita;
}
