// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_precio_neto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClientePrecioNetoDTO _$$_ClientePrecioNetoDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ClientePrecioNetoDTO(
      clienteId: json['CLIENTE_ID'] as String,
      articuloId: json['ARTICULO_ID'] as String,
      cantidadDesDe: (json['CANTIDAD_DESDE'] as num).toDouble(),
      precio: (json['PRECIO'] as num).toDouble(),
      tipoPrecio: (json['TIPO_PRECIO'] as num?)?.toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ClientePrecioNetoDTOToJson(
        _$_ClientePrecioNetoDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'ARTICULO_ID': instance.articuloId,
      'CANTIDAD_DESDE': instance.cantidadDesDe,
      'PRECIO': instance.precio,
      'TIPO_PRECIO': instance.tipoPrecio,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
