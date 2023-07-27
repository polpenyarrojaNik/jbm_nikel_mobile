import 'package:freezed_annotation/freezed_annotation.dart';

part 'notificacion.freezed.dart';

@freezed
class Notificacion with _$Notificacion {
  const Notificacion._();
  const factory Notificacion({
    required String notificationId,
    required DateTime fecha,
    required String usuarioId,
    required bool leidoSN,
    required String mensaje,
  }) = _Notificacion;
}
