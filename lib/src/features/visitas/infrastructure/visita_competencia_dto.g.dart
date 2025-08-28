// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_competencia_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VisitaCompetenciaDTO _$VisitaCompetenciaDTOFromJson(
  Map<String, dynamic> json,
) => _VisitaCompetenciaDTO(
  visitaId: json['COD_VISITA'] as String,
  codigoCompetencia: (json['CODIGO_COMPETENCIA'] as num).toInt(),
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$VisitaCompetenciaDTOToJson(
  _VisitaCompetenciaDTO instance,
) => <String, dynamic>{
  'COD_VISITA': instance.visitaId,
  'CODIGO_COMPETENCIA': instance.codigoCompetencia,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
