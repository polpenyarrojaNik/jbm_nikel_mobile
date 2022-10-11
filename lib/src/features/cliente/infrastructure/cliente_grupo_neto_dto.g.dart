// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_grupo_neto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteGrupoNetoDTO _$$_ClienteGrupoNetoDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ClienteGrupoNetoDTO(
      clienteId: json['CLIENTE_ID'] as String,
      grupoNetoId: json['GRUPO_NETO_ID'] as String,
      grupoNetoDescripcion: json['GRUPO_NETO_DESCRIPCION'] as String,
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$_ClienteGrupoNetoDTOToJson(
        _$_ClienteGrupoNetoDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'GRUPO_NETO_ID': instance.grupoNetoId,
      'GRUPO_NETO_DESCRIPCION': instance.grupoNetoDescripcion,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
