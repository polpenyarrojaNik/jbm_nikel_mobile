// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitaLocalDTO _$$_VisitaLocalDTOFromJson(Map<String, dynamic> json) =>
    _$_VisitaLocalDTO(
      visitaAppId: json['COD_VISITA_APP'] as String?,
      fecha: DateTime.parse(json['FECHA'] as String),
      clienteId: json['CLIENTE_ID'] as String?,
      isClienteProvisional: json['CLIENTE_POTENCIAL_SN'] as String,
      clienteProvisionalNombre: json['CLIENTE_POTENCIAL_NOMBRE'] as String?,
      clienteProvisionalEmail: json['CLIENTE_POTENCIAL_EMAIL'] as String?,
      clienteProvisionalTelefono: json['CLIENTE_POTENCIAL_TELEFONO'] as String?,
      numEmpl: json['NUM_EMPL'] as String,
      contacto: json['CONTACTO'] as String,
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
      'FECHA': instance.fecha.toIso8601String(),
      'CLIENTE_ID': instance.clienteId,
      'CLIENTE_POTENCIAL_SN': instance.isClienteProvisional,
      'CLIENTE_POTENCIAL_NOMBRE': instance.clienteProvisionalNombre,
      'CLIENTE_POTENCIAL_EMAIL': instance.clienteProvisionalEmail,
      'CLIENTE_POTENCIAL_TELEFONO': instance.clienteProvisionalTelefono,
      'NUM_EMPL': instance.numEmpl,
      'CONTACTO': instance.contacto,
      'RESUMEN': instance.resumen,
      'LATITUD': instance.latitud,
      'LONGITUD': instance.longitud,
      'ENVIADA': instance.enviada,
      'TRATADA': instance.tratada,
      'ERROR_SYNC': instance.errorSyncMessage,
    };
