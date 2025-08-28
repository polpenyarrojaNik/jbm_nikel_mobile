// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_ventas_cliente_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArticuloVentasClienteDTO _$ArticuloVentasClienteDTOFromJson(
  Map<String, dynamic> json,
) => _ArticuloVentasClienteDTO(
  clienteId: json['CLIENTE_ID'] as String,
  nombreCliente: json['NOMBRE'] as String,
  importeAnyo: (json['IMPORTE_ANYO'] as num).toDouble(),
  importeAnyo_1: (json['IMPORTE_ANYO_1'] as num).toDouble(),
  importeAnyo_2: (json['IMPORTE_ANYO_2'] as num).toDouble(),
  importeAnyo_3: (json['IMPORTE_ANYO_3'] as num).toDouble(),
  importeAnyo_4: (json['IMPORTE_ANYO_4'] as num).toDouble(),
  cantidadAnyo: (json['CANTIDAD_ANYO'] as num).toInt(),
  cantidadAnyo_1: (json['CANTIDAD_ANYO_1'] as num).toInt(),
  cantidadAnyo_2: (json['CANTIDAD_ANYO_2'] as num).toInt(),
  cantidadAnyo_3: (json['CANTIDAD_ANYO_3'] as num).toInt(),
  cantidadAnyo_4: (json['CANTIDAD_ANYO_4'] as num).toInt(),
);

Map<String, dynamic> _$ArticuloVentasClienteDTOToJson(
  _ArticuloVentasClienteDTO instance,
) => <String, dynamic>{
  'CLIENTE_ID': instance.clienteId,
  'NOMBRE': instance.nombreCliente,
  'IMPORTE_ANYO': instance.importeAnyo,
  'IMPORTE_ANYO_1': instance.importeAnyo_1,
  'IMPORTE_ANYO_2': instance.importeAnyo_2,
  'IMPORTE_ANYO_3': instance.importeAnyo_3,
  'IMPORTE_ANYO_4': instance.importeAnyo_4,
  'CANTIDAD_ANYO': instance.cantidadAnyo,
  'CANTIDAD_ANYO_1': instance.cantidadAnyo_1,
  'CANTIDAD_ANYO_2': instance.cantidadAnyo_2,
  'CANTIDAD_ANYO_3': instance.cantidadAnyo_3,
  'CANTIDAD_ANYO_4': instance.cantidadAnyo_4,
};
