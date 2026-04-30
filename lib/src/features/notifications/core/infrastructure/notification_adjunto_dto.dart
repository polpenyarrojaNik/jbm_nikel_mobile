import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/notificacion_adjunto.dart';

part 'notification_adjunto_dto.freezed.dart';
part 'notification_adjunto_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class NotificationAdjuntoDTO with _$NotificationAdjuntoDTO {
  const NotificationAdjuntoDTO._();
  const factory NotificationAdjuntoDTO({
    @JsonKey(name: 'NOTIFICACION_GUID') required String notificacionId,
    @JsonKey(name: 'COD_AJUNTO') required int adjuntoId,
    @JsonKey(name: 'NOMBRE_ARCHIVO') required String nombreArchivo,
    @JsonKey(name: 'OBSERVACIONES') required String? observaciones,
    @JsonKey(name: 'TIPO_FICHERO_DESCRIPCION')
    required String? tipoAdjuntoDescripcion,
    @JsonKey(name: 'TIPO_FICHERO_TIPO_MIME')
    required String tipoAdjuntoMimeType,
    @JsonKey(name: 'TIPO_FICHERO_ARCHIVO_EXTENSION')
    required String tipoAdjuntoExtension,
  }) = _NotificationAdjuntoDTO;

  factory NotificationAdjuntoDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationAdjuntoDTOFromJson(json);

  NotificationAdjunto toDomain() {
    return NotificationAdjunto(
      notificationId: notificacionId,
      adjuntoId: adjuntoId,
      nombreArchivo: nombreArchivo,
      observaciones: observaciones,
      tipoAdjuntoDescripcion: tipoAdjuntoDescripcion,
      tipoAdjuntoMimeType: tipoAdjuntoMimeType,
      tipoAdjuntoExtension: tipoAdjuntoExtension,
    );
  }
}
