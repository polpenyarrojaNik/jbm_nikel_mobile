// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_alrededor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClienteAlrededorDTO _$ClienteAlrededorDTOFromJson(Map<String, dynamic> json) =>
    _ClienteAlrededorDTO(
      markerId: json['markerId'] as String,
      clienteId: json['clienteId'] as String,
      nombre: json['nombre'] as String,
      isDireccionFiscal: json['isDireccionFiscal'] as String,
      direccion: json['direccion'] as String?,
      codigoPostal: json['codigoPostal'] as String?,
      poblacion: json['poblacion'] as String?,
      provincia: json['provincia'] as String?,
      paisId: json['paisId'] as String?,
      isClientePotencial: json['isClientePotencial'] as String?,
      latitud: (json['latitud'] as num).toDouble(),
      longitud: (json['longitud'] as num).toDouble(),
      nombreRepresentante1: json['nombreRepresentante1'] as String?,
      nombreRepresentante2: json['nombreRepresentante2'] as String?,
      ventasAnyoActual: (json['ventasAnyoActual'] as num).toDouble(),
      ventasAnyoAnterior: (json['ventasAnyoAnterior'] as num).toDouble(),
      porcentajeAbonos: (json['porcentajeAbonos'] as num).toDouble(),
    );

Map<String, dynamic> _$ClienteAlrededorDTOToJson(
  _ClienteAlrededorDTO instance,
) => <String, dynamic>{
  'markerId': instance.markerId,
  'clienteId': instance.clienteId,
  'nombre': instance.nombre,
  'isDireccionFiscal': instance.isDireccionFiscal,
  'direccion': instance.direccion,
  'codigoPostal': instance.codigoPostal,
  'poblacion': instance.poblacion,
  'provincia': instance.provincia,
  'paisId': instance.paisId,
  'isClientePotencial': instance.isClientePotencial,
  'latitud': instance.latitud,
  'longitud': instance.longitud,
  'nombreRepresentante1': instance.nombreRepresentante1,
  'nombreRepresentante2': instance.nombreRepresentante2,
  'ventasAnyoActual': instance.ventasAnyoActual,
  'ventasAnyoAnterior': instance.ventasAnyoAnterior,
  'porcentajeAbonos': instance.porcentajeAbonos,
};
