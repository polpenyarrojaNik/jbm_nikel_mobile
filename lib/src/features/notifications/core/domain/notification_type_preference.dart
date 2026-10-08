import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_type_preference.freezed.dart';

@freezed
abstract class NotificationTypePreference with _$NotificationTypePreference {
  const NotificationTypePreference._();
  const factory NotificationTypePreference({
    required String codTipo,
    required bool abrirSN,
  }) = _NotificationTypePreference;
}
