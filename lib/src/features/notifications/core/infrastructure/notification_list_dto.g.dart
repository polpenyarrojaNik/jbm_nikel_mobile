// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationListDtoImpl _$$NotificationListDtoImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationListDtoImpl(
  notificacionId: json['NOTIFICACION_GUID'] as String,
  fecha: DateTime.parse(json['F_ALTA'] as String),
  leidoSN: json['LEIDO_SN'] as String,
  mensaje: json['MENSAJE_MARKDOWN'] as String,
);

Map<String, dynamic> _$$NotificationListDtoImplToJson(
  _$NotificationListDtoImpl instance,
) => <String, dynamic>{
  'NOTIFICACION_GUID': instance.notificacionId,
  'F_ALTA': instance.fecha.toIso8601String(),
  'LEIDO_SN': instance.leidoSN,
  'MENSAJE_MARKDOWN': instance.mensaje,
};
