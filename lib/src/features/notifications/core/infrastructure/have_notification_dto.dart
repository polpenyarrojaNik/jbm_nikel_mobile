import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/have_notification.dart';

part 'have_notification_dto.freezed.dart';
part 'have_notification_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class HaveNotificationDTO with _$HaveNotificationDTO {
  const HaveNotificationDTO._();
  const factory HaveNotificationDTO({
    @JsonKey(name: 'NOTIFICACION_GUID') required String notificacionId,
    @JsonKey(name: 'ABRIR_SN') required String abrirSN,
  }) = _HaveNotificationDTO;

  factory HaveNotificationDTO.fromJson(Map<String, dynamic> json) =>
      _$HaveNotificationDTOFromJson(json);

  HaveNotification toDomain() {
    return HaveNotification(
      notificationId: notificacionId,
      abrirSN: abrirSN == 'S',
    );
  }
}
