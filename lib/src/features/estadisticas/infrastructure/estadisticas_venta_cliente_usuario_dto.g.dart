// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estadisticas_venta_cliente_usuario_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstadisticasVentaClienteUsuarioDTO
    _$$_EstadisticasVentaClienteUsuarioDTOFromJson(Map<String, dynamic> json) =>
        _$_EstadisticasVentaClienteUsuarioDTO(
          anyo: (json['ANYO'] as num).toDouble(),
          mes: (json['MES'] as num).toDouble(),
          clienteId: json['CLIENTE_ID'] as String,
          articuloId: json['ARTICULO_ID'] as String,
          unidades: (json['UNIDADES'] as num?)?.toDouble(),
          importe: (json['IMPORTE'] as num?)?.toDouble(),
          coste: (json['COSTE'] as num?)?.toDouble(),
          lastUpdated: DateTime.parse(json['LAST_UPDATED'] as String),
          deleted: json['DELETED'] as String? ?? 'N',
        );

Map<String, dynamic> _$$_EstadisticasVentaClienteUsuarioDTOToJson(
        _$_EstadisticasVentaClienteUsuarioDTO instance) =>
    <String, dynamic>{
      'ANYO': instance.anyo,
      'MES': instance.mes,
      'CLIENTE_ID': instance.clienteId,
      'ARTICULO_ID': instance.articuloId,
      'UNIDADES': instance.unidades,
      'IMPORTE': instance.importe,
      'COSTE': instance.coste,
      'LAST_UPDATED': instance.lastUpdated.toIso8601String(),
      'DELETED': instance.deleted,
    };
