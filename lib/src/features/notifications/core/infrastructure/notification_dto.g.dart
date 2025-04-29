// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationDtoImpl _$$NotificationDtoImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationDtoImpl(
  notificacionId: json['NOTIFICACION_GUID'] as String,
  fecha: DateTime.parse(json['F_ALTA'] as String),
  usuarioId: json['USUARIO_ID'] as String,
  leidoSN: json['LEIDO_SN'] as String,
  mensaje: json['MENSAJE_MARKDOWN'] as String,
);

Map<String, dynamic> _$$NotificationDtoImplToJson(
  _$NotificationDtoImpl instance,
) => <String, dynamic>{
  'NOTIFICACION_GUID': instance.notificacionId,
  'F_ALTA': instance.fecha.toIso8601String(),
  'USUARIO_ID': instance.usuarioId,
  'LEIDO_SN': instance.leidoSN,
  'MENSAJE_MARKDOWN': instance.mensaje,
};
