// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_competencia_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VisitaCompetenciaLocalDTO _$VisitaCompetenciaLocalDTOFromJson(
  Map<String, dynamic> json,
) => _VisitaCompetenciaLocalDTO(
  visitaAppId: json['COD_VISITA_APP'] as String,
  codigoCompetencia: (json['CODIGO_COMPETENCIA'] as num).toInt(),
);

Map<String, dynamic> _$VisitaCompetenciaLocalDTOToJson(
  _VisitaCompetenciaLocalDTO instance,
) => <String, dynamic>{
  'COD_VISITA_APP': instance.visitaAppId,
  'CODIGO_COMPETENCIA': instance.codigoCompetencia,
};
