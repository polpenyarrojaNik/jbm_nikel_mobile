import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/notificacion.dart';
import 'notification_adjunto_dto.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class NotificationDTO with _$NotificationDTO {
  const NotificationDTO._();
  const factory NotificationDTO({
    @JsonKey(name: 'NOTIFICACION_GUID') required String notificacionId,
    @JsonKey(name: 'F_ALTA') required DateTime fecha,
    @JsonKey(name: 'LEIDO_SN') required String leidoSN,
    @JsonKey(name: 'MENSAJE_MARKDOWN') required String mensaje,
    @JsonKey(name: 'NOTIFICACION_ADJUNTO')
    required List<NotificationAdjuntoDTO> adjuntos,
    @JsonKey(name: 'ABRIR_SN') required String abrirSN,
  }) = _NotificationDTO;

  factory NotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationDTOFromJson(json);

  Notificacion toDomain() {
    return Notificacion(
      notificationId: notificacionId,
      fecha: fecha,
      leidoSN: leidoSN == 'S',
      abrirSN: abrirSN == 'S',
      mensaje: mensaje,
      adjuntos: adjuntos.map((e) => e.toDomain()).toList(),
    );
  }
}
