// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_empresa_iva_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticuloEmpresaIvaDTOImpl _$$ArticuloEmpresaIvaDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticuloEmpresaIvaDTOImpl(
      articuloId: json['ARTICULO_ID'] as String,
      empresaId: json['EMPRESA_ID'] as String,
      iva: (json['IVA'] as num).toDouble(),
      lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
      deleted: json['DELETED'] as String? ?? 'N',
    );

Map<String, dynamic> _$$ArticuloEmpresaIvaDTOImplToJson(
        _$ArticuloEmpresaIvaDTOImpl instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'EMPRESA_ID': instance.empresaId,
      'IVA': instance.iva,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
