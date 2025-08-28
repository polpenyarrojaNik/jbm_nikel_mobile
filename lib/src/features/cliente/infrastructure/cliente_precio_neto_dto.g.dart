// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_precio_neto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClientePrecioNetoDTO _$ClientePrecioNetoDTOFromJson(
  Map<String, dynamic> json,
) => _ClientePrecioNetoDTO(
  clienteId: json['CLIENTE_ID'] as String,
  articuloId: json['ARTICULO_ID'] as String,
  cantidadDesde: (json['CANTIDAD_DESDE'] as num).toInt(),
  precio: (json['PRECIO'] as num).toDouble(),
  tipoPrecio: (json['TIPO_PRECIO'] as num?)?.toInt(),
  dtoAdicional: (json['DTO_ADICIONAL'] as num?)?.toDouble(),
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$ClientePrecioNetoDTOToJson(
  _ClientePrecioNetoDTO instance,
) => <String, dynamic>{
  'CLIENTE_ID': instance.clienteId,
  'ARTICULO_ID': instance.articuloId,
  'CANTIDAD_DESDE': instance.cantidadDesde,
  'PRECIO': instance.precio,
  'TIPO_PRECIO': instance.tipoPrecio,
  'DTO_ADICIONAL': instance.dtoAdicional,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
