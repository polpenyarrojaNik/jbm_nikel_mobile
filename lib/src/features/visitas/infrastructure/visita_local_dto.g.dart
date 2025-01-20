// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VisitaLocalDTOImpl _$$VisitaLocalDTOImplFromJson(Map<String, dynamic> json) =>
    _$VisitaLocalDTOImpl(
      visitaAppId: json['COD_VISITA_APP'] as String?,
      fecha: DateTime.parse(json['FECHA'] as String),
      clienteId: json['CLIENTE_ID'] as String?,
      isClienteProvisional: json['CLIENTE_POTENCIAL_SN'] as String,
      clienteProvisionalNombre: json['CLIENTE_POTENCIAL_NOMBRE'] as String?,
      clienteProvisionalEmail: json['CLIENTE_POTENCIAL_EMAIL'] as String?,
      clienteProvisionalTelefono: json['CLIENTE_POTENCIAL_TELEFONO'] as String?,
      clienteProvisionalDireccion1:
          json['CLIENTE_POTENCIAL_DIRECCION1'] as String?,
      clienteProvisionalDireccion2:
          json['CLIENTE_POTENCIAL_DIRECCION2'] as String?,
      clienteProvisionalCodigoPostal:
          json['CLIENTE_POTENCIAL_COD_POS'] as String?,
      clienteProvisionalPoblacion:
          json['CLIENTE_POTENCIAL_POBLACION'] as String?,
      clienteProvisionalProvinciaId:
          json['CLIENTE_POTENCIAL_PROVINCIA_ID'] as String?,
      clienteProvisionalRegionId:
          json['CLIENTE_POTENCIAL_REGION_ID'] as String?,
      clienteProvisionalPaisId: json['CLIENTE_POTENCIAL_PAIS_ID'] as String?,
      numEmpl: json['NUM_EMPL'] as String,
      contacto: json['CONTACTO'] as String,
      atendidoPor: json['ATENDIDO_POR'] as String?,
      resumen: json['RESUMEN'] as String?,
      marcasCompetencia: json['MARCAS_COMPETENCIA'] as String?,
      ofertaRealizada: json['OFERTA_REALIZADA'] as String,
      interesCliente: json['INTERES_CLIENTE'] as String?,
      pedidoRealizado: json['PEDIDO_REALIZADO'] as String,
      codigoMotivoNoInteres:
          (json['CODIGO_MOTIVO_NO_INTERES'] as num?)?.toInt(),
      codigoMotivoNoPedido: (json['CODIGO_MOTIVO_NO_PEDIDO'] as num?)?.toInt(),
      codigoSector: (json['CODIGO_SECTOR'] as num?)?.toInt(),
      codigoCompetencia: (json['CODIGO_COMPETENCIA'] as num?)?.toInt(),
      almacenPropio: json['ALMACEN_PROPIO'] as String?,
      capacidad: json['CAPACIDAD'] as String?,
      frecuenciaPedido: json['FRECUENCIA_PEDIDO'] as String?,
      latitud: (json['LATITUD'] as num).toDouble(),
      longitud: (json['LONGITUD'] as num).toDouble(),
      enviada: json['ENVIADA'] as String? ?? 'N',
      tratada: json['TRATADA'] as String? ?? 'N',
      errorSyncMessage: json['ERROR_SYNC'] as String?,
    );

Map<String, dynamic> _$$VisitaLocalDTOImplToJson(
        _$VisitaLocalDTOImpl instance) =>
    <String, dynamic>{
      'COD_VISITA_APP': instance.visitaAppId,
      'FECHA': instance.fecha.toIso8601String(),
      'CLIENTE_ID': instance.clienteId,
      'CLIENTE_POTENCIAL_SN': instance.isClienteProvisional,
      'CLIENTE_POTENCIAL_NOMBRE': instance.clienteProvisionalNombre,
      'CLIENTE_POTENCIAL_EMAIL': instance.clienteProvisionalEmail,
      'CLIENTE_POTENCIAL_TELEFONO': instance.clienteProvisionalTelefono,
      'CLIENTE_POTENCIAL_DIRECCION1': instance.clienteProvisionalDireccion1,
      'CLIENTE_POTENCIAL_DIRECCION2': instance.clienteProvisionalDireccion2,
      'CLIENTE_POTENCIAL_COD_POS': instance.clienteProvisionalCodigoPostal,
      'CLIENTE_POTENCIAL_POBLACION': instance.clienteProvisionalPoblacion,
      'CLIENTE_POTENCIAL_PROVINCIA_ID': instance.clienteProvisionalProvinciaId,
      'CLIENTE_POTENCIAL_REGION_ID': instance.clienteProvisionalRegionId,
      'CLIENTE_POTENCIAL_PAIS_ID': instance.clienteProvisionalPaisId,
      'NUM_EMPL': instance.numEmpl,
      'CONTACTO': instance.contacto,
      'ATENDIDO_POR': instance.atendidoPor,
      'RESUMEN': instance.resumen,
      'MARCAS_COMPETENCIA': instance.marcasCompetencia,
      'OFERTA_REALIZADA': instance.ofertaRealizada,
      'INTERES_CLIENTE': instance.interesCliente,
      'PEDIDO_REALIZADO': instance.pedidoRealizado,
      'CODIGO_MOTIVO_NO_INTERES': instance.codigoMotivoNoInteres,
      'CODIGO_MOTIVO_NO_PEDIDO': instance.codigoMotivoNoPedido,
      'CODIGO_SECTOR': instance.codigoSector,
      'CODIGO_COMPETENCIA': instance.codigoCompetencia,
      'ALMACEN_PROPIO': instance.almacenPropio,
      'CAPACIDAD': instance.capacidad,
      'FRECUENCIA_PEDIDO': instance.frecuenciaPedido,
      'LATITUD': instance.latitud,
      'LONGITUD': instance.longitud,
      'ENVIADA': instance.enviada,
      'TRATADA': instance.tratada,
      'ERROR_SYNC': instance.errorSyncMessage,
    };
