import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/cliente_adjunto.dart';

part 'cliente_adjunto_dto.freezed.dart';
part 'cliente_adjunto_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteAdjuntoDTO with _$ClienteAdjuntoDTO {
  const ClienteAdjuntoDTO._();
  const factory ClienteAdjuntoDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'NOMBRE_ARCHIVO') required String nombreAdjunto,
  }) = _ClienteAdjuntoDTO;

  factory ClienteAdjuntoDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteAdjuntoDTOFromJson(json);

  ClienteAdjunto toDomain() {
    return ClienteAdjunto(
      clienteId: clienteId,
      nombreAdjunto: nombreAdjunto,
    );
  }
}
