// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_descuento_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClienteDescuentoDTOImpl _$$ClienteDescuentoDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ClienteDescuentoDTOImpl(
      clienteId: json['CLIENTE_ID'] as String,
      articuloId: json['ARTICULO_ID'] as String,
      familiaId: json['FAMILIA_ID'] as String,
      subfamiliaId: json['SUBFAMILIA_ID'] as String,
      cantidadDesde: (json['CANTIDAD_DESDE'] as num).toInt(),
      descuento: (json['DESCUENTO'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$ClienteDescuentoDTOImplToJson(
        _$ClienteDescuentoDTOImpl instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'ARTICULO_ID': instance.articuloId,
      'FAMILIA_ID': instance.familiaId,
      'SUBFAMILIA_ID': instance.subfamiliaId,
      'CANTIDAD_DESDE': instance.cantidadDesde,
      'DESCUENTO': instance.descuento,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
