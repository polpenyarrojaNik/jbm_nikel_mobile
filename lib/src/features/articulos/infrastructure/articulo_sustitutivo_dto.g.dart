// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_sustitutivo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticuloSustitutivoDTOImpl _$$ArticuloSustitutivoDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticuloSustitutivoDTOImpl(
      articuloId: json['ARTICULO_ID'] as String,
      articuloSustitutivoId: json['ARTICULO_ID_SUSTITUTIVO'] as String,
      orden: json['ORDEN'] as int,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$ArticuloSustitutivoDTOImplToJson(
        _$ArticuloSustitutivoDTOImpl instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'ARTICULO_ID_SUSTITUTIVO': instance.articuloSustitutivoId,
      'ORDEN': instance.orden,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
