import 'package:freezed_annotation/freezed_annotation.dart';

part 'have_notification.freezed.dart';

@freezed
abstract class HaveNotification with _$HaveNotification {
  const HaveNotification._();
  const factory HaveNotification({
    required String notificationId,
    required bool abrirSN,
  }) = _HaveNotification;
}
