// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitaLocalDTO _$$_VisitaLocalDTOFromJson(Map<String, dynamic> json) =>
    _$_VisitaLocalDTO(
      visitaAppId: json['COD_VISITA_APP'] as String?,
      clienteId: json['CLIENTE_ID'] as String,
      fecha: DateTime.parse(json['FECHA'] as String),
      numEmpl: json['NUM_EMPL'] as String,
      contacto: json['CONTACTO'] as String?,
      resumen: json['RESUMEN'] as String?,
      latitud: (json['LATITUD'] as num).toDouble(),
      longitud: (json['LONGITUD'] as num).toDouble(),
      enviada: json['ENVIADA'] as String? ?? 'N',
      tratada: json['TRATADA'] as String? ?? 'N',
      errorSyncMessage: json['ERROR_SYNC'] as String?,
    );

Map<String, dynamic> _$$_VisitaLocalDTOToJson(_$_VisitaLocalDTO instance) =>
    <String, dynamic>{
      'COD_VISITA_APP': instance.visitaAppId,
      'CLIENTE_ID': instance.clienteId,
      'FECHA': instance.fecha.toIso8601String(),
      'NUM_EMPL': instance.numEmpl,
      'CONTACTO': instance.contacto,
      'RESUMEN': instance.resumen,
      'LATITUD': instance.latitud,
      'LONGITUD': instance.longitud,
      'ENVIADA': instance.enviada,
      'TRATADA': instance.tratada,
      'ERROR_SYNC': instance.errorSyncMessage,
    };
