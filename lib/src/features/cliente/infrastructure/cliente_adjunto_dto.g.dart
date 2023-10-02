// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_adjunto_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClienteAdjuntoDTOImpl _$$ClienteAdjuntoDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ClienteAdjuntoDTOImpl(
      clienteId: json['CLIENTE_ID'] as String,
      nombreAdjunto: json['NOMBRE_ARCHIVO'] as String,
    );

Map<String, dynamic> _$$ClienteAdjuntoDTOImplToJson(
        _$ClienteAdjuntoDTOImpl instance) =>
    <String, dynamic>{
      'CLIENTE_ID': instance.clienteId,
      'NOMBRE_ARCHIVO': instance.nombreAdjunto,
    };
