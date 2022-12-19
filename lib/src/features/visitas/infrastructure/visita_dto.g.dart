// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VisitaDTO _$$_VisitaDTOFromJson(Map<String, dynamic> json) => _$_VisitaDTO(
      id: json['VISITA_ID'] as String,
      fecha: DateTime.parse(json['FECHA'] as String),
      clienteId: json['CLIENTE_ID'] as String?,
      isClienteProvisional: json['CLIENTE_POTENCIAL_SN'] as String,
      clienteProvisionalNombre: json['CLIENTE_POTENCIAL_NOMBRE'] as String?,
      clienteProvisionalEmail: json['CLIENTE_POTENCIAL_EMAIL'] as String?,
      clienteProvisionalTelefono: json['CLIENTE_POTENCIAL_TELEFONO'] as String?,
      clienteProvisionalPoblacion:
          json['CLIENTE_POTENCIAL_POBLACION'] as String?,
      numEmpl: json['NUM_EMPL'] as String,
      contacto: json['CONTACTO'] as String?,
      atendidoPor: json['ATENDIDO_POR'] as String?,
      resumen: json['RESUMEN'] as String?,
      marcasCompetencia: json['MARCAS_COMPETENCIA'] as String?,
      latitud: (json['LATITUD'] as num).toDouble(),
      longitud: (json['LONGITUD'] as num).toDouble(),
      visitaAppId: json['COD_VISITA_APP'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_VisitaDTOToJson(_$_VisitaDTO instance) =>
    <String, dynamic>{
      'VISITA_ID': instance.id,
      'FECHA': instance.fecha.toIso8601String(),
      'CLIENTE_ID': instance.clienteId,
      'CLIENTE_POTENCIAL_SN': instance.isClienteProvisional,
      'CLIENTE_POTENCIAL_NOMBRE': instance.clienteProvisionalNombre,
      'CLIENTE_POTENCIAL_EMAIL': instance.clienteProvisionalEmail,
      'CLIENTE_POTENCIAL_TELEFONO': instance.clienteProvisionalTelefono,
      'CLIENTE_POTENCIAL_POBLACION': instance.clienteProvisionalPoblacion,
      'NUM_EMPL': instance.numEmpl,
      'CONTACTO': instance.contacto,
      'ATENDIDO_POR': instance.atendidoPor,
      'RESUMEN': instance.resumen,
      'MARCAS_COMPETENCIA': instance.marcasCompetencia,
      'LATITUD': instance.latitud,
      'LONGITUD': instance.longitud,
      'COD_VISITA_APP': instance.visitaAppId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
