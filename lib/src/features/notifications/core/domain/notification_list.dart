import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_list.freezed.dart';

@freezed
abstract class NotificationList with _$NotificationList {
  const NotificationList._();
  const factory NotificationList({
    required String notificationId,
    required DateTime fecha,
    required bool leidoSN,
    required String mensaje,
  }) = _NotificationList;
}
