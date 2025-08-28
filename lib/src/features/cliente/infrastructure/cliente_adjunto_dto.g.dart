// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_adjunto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClienteAdjuntoDTO _$ClienteAdjuntoDTOFromJson(Map<String, dynamic> json) =>
    _ClienteAdjuntoDTO(
      clienteId: json['CLIENTE_ID'] as String,
      nombreAdjunto: json['NOMBRE_ARCHIVO'] as String,
    );

Map<String, dynamic> _$ClienteAdjuntoDTOToJson(_ClienteAdjuntoDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'NOMBRE_ARCHIVO': instance.nombreAdjunto,
    };
