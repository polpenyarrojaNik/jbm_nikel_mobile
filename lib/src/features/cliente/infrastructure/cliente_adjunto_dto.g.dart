// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_adjunto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteAdjuntoDTO _$$_ClienteAdjuntoDTOFromJson(Map<String, dynamic> json) =>
    _$_ClienteAdjuntoDTO(
      clienteId: json['CLIENTE_ID'] as String,
      nombreAdjunto: json['NOMBRE_ARCHIVO'] as String,
    );

Map<String, dynamic> _$$_ClienteAdjuntoDTOToJson(
        _$_ClienteAdjuntoDTO instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'NOMBRE_ARCHIVO': instance.nombreAdjunto,
    };
