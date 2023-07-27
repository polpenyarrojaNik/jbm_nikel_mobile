import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/notifications/core/domain/notificacion.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class NotificationDto with _$NotificationDto {
  const NotificationDto._();
  const factory NotificationDto({
    @JsonKey(name: 'NOTIFICACION_GUID') required String notificacionId,
    @JsonKey(name: 'F_ALTA') required DateTime fecha,
    @JsonKey(name: 'USUARIO_ID') required String usuarioId,
    @JsonKey(name: 'LEIDO_SN') required String leidoSN,
    @JsonKey(name: 'MENSAJE_MARKDOWN') required String mensaje,
  }) = _NotificationDto;

  factory NotificationDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationDtoFromJson(json);

  Notificacion toDomain() {
    return Notificacion(
        notificationId: notificacionId,
        fecha: fecha,
        usuarioId: usuarioId,
        leidoSN: leidoSN == 'S',
        mensaje: mensaje);
  }
}
