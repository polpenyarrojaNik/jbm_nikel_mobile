// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_sustitutivo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticuloSustitutivoDTO _$ArticuloSustitutivoDTOFromJson(
  Map<String, dynamic> json,
) => _ArticuloSustitutivoDTO(
  articuloId: json['ARTICULO_ID'] as String,
  articuloSustitutivoId: json['ARTICULO_ID_SUSTITUTIVO'] as String,
  orden: (json['ORDEN'] as num).toInt(),
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$ArticuloSustitutivoDTOToJson(
  _ArticuloSustitutivoDTO instance,
) => <String, dynamic>{
  'ARTICULO_ID': instance.articuloId,
  'ARTICULO_ID_SUSTITUTIVO': instance.articuloSustitutivoId,
  'ORDEN': instance.orden,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
