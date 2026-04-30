import 'package:freezed_annotation/freezed_annotation.dart';

part 'notificacion_adjunto.freezed.dart';

@freezed
abstract class NotificationAdjunto with _$NotificationAdjunto {
  const NotificationAdjunto._();
  const factory NotificationAdjunto({
    required String notificationId,
    required int adjuntoId,
    required String nombreArchivo,
    required String? observaciones,
    required String? tipoAdjuntoDescripcion,
    required String tipoAdjuntoMimeType,
    required String tipoAdjuntoExtension,
  }) = _NotificationAdjunto;
}
