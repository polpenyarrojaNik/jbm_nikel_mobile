// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_competencia_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisitaCompetenciaLocalDTOImpl _$$VisitaCompetenciaLocalDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$VisitaCompetenciaLocalDTOImpl(
      visitaAppId: json['COD_VISITA_APP'] as String,
      codigoCompetencia: (json['CODIGO_COMPETENCIA'] as num).toInt(),
    );

Map<String, dynamic> _$$VisitaCompetenciaLocalDTOImplToJson(
        _$VisitaCompetenciaLocalDTOImpl instance) =>
    <String, dynamic>{
      'COD_VISITA_APP': instance.visitaAppId,
      'CODIGO_COMPETENCIA': instance.codigoCompetencia,
    };
