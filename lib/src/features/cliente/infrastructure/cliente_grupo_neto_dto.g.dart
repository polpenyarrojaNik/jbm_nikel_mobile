// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_grupo_neto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClienteGrupoNetoDTOImpl _$$ClienteGrupoNetoDTOImplFromJson(
  Map<String, dynamic> json,
) => _$ClienteGrupoNetoDTOImpl(
  clienteId: json['CLIENTE_ID'] as String,
  grupoNetoId: json['GRUPO_NETO_ID'] as String,
  grupoNetoDescripcion: json['GRUPO_NETO_DESCRIPCION'] as String,
  dtoAdicional: (json['DTO_ADICIONAL'] as num).toDouble(),
  lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
  deleted: json['DELETED'] as String? ?? 'N',
);

Map<String, dynamic> _$$ClienteGrupoNetoDTOImplToJson(
  _$ClienteGrupoNetoDTOImpl instance,
) => <String, dynamic>{
  'CLIENTE_ID': instance.clienteId,
  'GRUPO_NETO_ID': instance.grupoNetoId,
  'GRUPO_NETO_DESCRIPCION': instance.grupoNetoDescripcion,
  'DTO_ADICIONAL': instance.dtoAdicional,
  'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
  'DELETED': instance.deleted,
};
