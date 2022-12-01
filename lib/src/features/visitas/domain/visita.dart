import 'package:freezed_annotation/freezed_annotation.dart';

part 'visita.freezed.dart';

@freezed
class Visita with _$Visita {
  const Visita._();
  const factory Visita({
    String? id,
    String? clienteId,
    String? nombreCliente,
    required bool isClienteProvisional,
    String? clienteProvisionalNombre,
    String? clienteProvisionalEmail,
    String? clienteProvisionalTelefono,
    String? clienteProvisionalPoblacion,
    required DateTime fecha,
    required String numEmpl,
    required String contacto,
    String? atendidoPor,
    String? resumen,
    String? marcasCompetencia,
    required double latitud,
    required double longitud,
    String? visitaAppId,
    required DateTime lastUpdated,
    required bool deleted,
    required bool enviada,
    required bool tratada,
    String? errorSyncMessage,
  }) = _Visita;

  bool getIsLocal() => !tratada;

  bool isEditable() => (!tratada && !enviada);

  String getNombreMostrar() => isClienteProvisional
      ? clienteProvisionalNombre!
      : '#$clienteId ${(nombreCliente != null) ? nombreCliente : ''}';
}
