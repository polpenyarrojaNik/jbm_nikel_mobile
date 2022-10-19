// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_top_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticuloTopDTO _$$_ArticuloTopDTOFromJson(Map<String, dynamic> json) =>
    _$_ArticuloTopDTO(
      articuloId: json['ARTICULO_ID'] as String,
      descripcion: json['DESCRIPCION_ES'] as String,
      ventasTotal: (json['VENTAS_TOTAL'] as num).toDouble(),
      ventasCliente: (json['VENTAS_CLIENTE'] as num).toDouble(),
      divisaId: json['DIVISA_ID'] as String,
    );

Map<String, dynamic> _$$_ArticuloTopDTOToJson(_$_ArticuloTopDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'DESCRIPCION_ES': instance.descripcion,
      'VENTAS_TOTAL': instance.ventasTotal,
      'VENTAS_CLIENTE': instance.ventasCliente,
      'DIVISA_ID': instance.divisaId,
    };
