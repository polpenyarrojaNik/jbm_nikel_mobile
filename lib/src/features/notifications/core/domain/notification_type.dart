import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_type.freezed.dart';

@freezed
abstract class NotificationType with _$NotificationType {
  const NotificationType._();
  const factory NotificationType({
    required String codTipo,
    required String descripcion,
    required bool abrirSN,
  }) = _NotificationType;
}
