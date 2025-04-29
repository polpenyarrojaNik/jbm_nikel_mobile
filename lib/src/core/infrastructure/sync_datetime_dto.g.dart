// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_datetime_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SyncDateTimeDTOImpl _$$SyncDateTimeDTOImplFromJson(
  Map<String, dynamic> json,
) => _$SyncDateTimeDTOImpl(
  id: (json['ID'] as num).toInt(),
  dbSchemaVersion: (json['DB_SCHEMA_VERSION'] as num).toInt(),
  articuloUltimaSync: DateTime.parse(json['ARTICULO_ULTIMA_SYNC'] as String),
  clienteUltimaSync: DateTime.parse(json['CLIENTE_ULTIMA_SYNC'] as String),
  pedidoUltimaSync: DateTime.parse(json['PEDIDO_ULTIMA_SYNC'] as String),
  visitaUltimaSync: DateTime.parse(json['VISITA_ULTIMA_SYNC'] as String),
);

Map<String, dynamic> _$$SyncDateTimeDTOImplToJson(
  _$SyncDateTimeDTOImpl instance,
) => <String, dynamic>{
  'ID': instance.id,
  'DB_SCHEMA_VERSION': instance.dbSchemaVersion,
  'ARTICULO_ULTIMA_SYNC': instance.articuloUltimaSync.toIso8601String(),
  'CLIENTE_ULTIMA_SYNC': instance.clienteUltimaSync.toIso8601String(),
  'PEDIDO_ULTIMA_SYNC': instance.pedidoUltimaSync.toIso8601String(),
  'VISITA_ULTIMA_SYNC': instance.visitaUltimaSync.toIso8601String(),
};
