// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_albaran_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PedidoAlbaranDTO _$$_PedidoAlbaranDTOFromJson(Map<String, dynamic> json) =>
    _$_PedidoAlbaranDTO(
      empresaId: json['EMPRESA_ID'] as String,
      pedidoVentaId: json['PEDIDO_ID'] as String,
      albaranId: json['ALBARAN_ID'] as String,
      fechaAlbaran: DateTime.parse(json['FECHA_ALBARAN'] as String),
      agencia: json['AGENCIA'] as String?,
      trackId: json['TRACK_ID'] as String?,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String,
    );

Map<String, dynamic> _$$_PedidoAlbaranDTOToJson(_$_PedidoAlbaranDTO instance) =>
    <String, dynamic>{
      'EMPRESA_ID': instance.empresaId,
      'PEDIDO_ID': instance.pedidoVentaId,
      'ALBARAN_ID': instance.albaranId,
      'FECHA_ALBARAN': instance.fechaAlbaran.toIso8601String(),
      'AGENCIA': instance.agencia,
      'TRACK_ID': instance.trackId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
