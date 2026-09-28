// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationDTO _$NotificationDTOFromJson(Map<String, dynamic> json) =>
    _NotificationDTO(
      notificacionId: json['NOTIFICACION_GUID'] as String,
      fecha: DateTime.parse(json['F_ALTA'] as String),
      leidoSN: json['LEIDO_SN'] as String,
      mensaje: json['MENSAJE_MARKDOWN'] as String,
      adjuntos: (json['NOTIFICACION_ADJUNTO'] as List<dynamic>)
          .map(
            (e) => NotificationAdjuntoDTO.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      abrirSN: json['ABRIR_SN'] as String,
    );

Map<String, dynamic> _$NotificationDTOToJson(_NotificationDTO instance) =>
    <String, dynamic>{
      'NOTIFICACION_GUID': instance.notificacionId,
      'F_ALTA': instance.fecha.toIso8601String(),
      'LEIDO_SN': instance.leidoSN,
      'MENSAJE_MARKDOWN': instance.mensaje,
      'NOTIFICACION_ADJUNTO': instance.adjuntos.map((e) => e.toJson()).toList(),
      'ABRIR_SN': instance.abrirSN,
    };
