// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_top_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticuloTopDTO _$$_ArticuloTopDTOFromJson(Map<String, dynamic> json) =>
    _$_ArticuloTopDTO(
      articuloId: json['ARTICULO_ID'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ArticuloTopDTOToJson(_$_ArticuloTopDTO instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
