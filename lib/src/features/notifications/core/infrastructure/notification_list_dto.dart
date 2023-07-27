import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/notification_list.dart';

part 'notification_list_dto.freezed.dart';
part 'notification_list_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class NotificationListDto with _$NotificationListDto {
  const NotificationListDto._();
  const factory NotificationListDto({
    @JsonKey(name: 'NOTIFICACION_GUID') required String notificacionId,
    @JsonKey(name: 'F_ALTA') required DateTime fecha,
    @JsonKey(name: 'LEIDO_SN') required String leidoSN,
    @JsonKey(name: 'MENSAJE_MARKDOWN') required String mensaje,
  }) = _NotificationListDto;

  factory NotificationListDto.fromJson(Map<String, dynamic> json) =>
      _$NotificationListDtoFromJson(json);

  NotificationList toDomain() {
    return NotificationList(
        notificationId: notificacionId,
        fecha: fecha,
        leidoSN: leidoSN == 'S',
        mensaje: mensaje);
  }
}
