// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_ventas_articulo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClienteVentasArticuloDTOImpl _$$ClienteVentasArticuloDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ClienteVentasArticuloDTOImpl(
      articuloId: json['ARTICULO_ID'] as String,
      descripcion: json['DESCRIPCION'] as String,
      importeAnyo: (json['IMPORTE_ANYO'] as num).toDouble(),
      importeAnyo_1: (json['IMPORTE_ANYO_1'] as num).toDouble(),
      importeAnyo_2: (json['IMPORTE_ANYO_2'] as num).toDouble(),
      importeAnyo_3: (json['IMPORTE_ANYO_3'] as num).toDouble(),
      importeAnyo_4: (json['IMPORTE_ANYO_4'] as num).toDouble(),
      cantidadAnyo: json['CANTIDAD_ANYO'] as int,
      cantidadAnyo_1: json['CANTIDAD_ANYO_1'] as int,
      cantidadAnyo_2: json['CANTIDAD_ANYO_2'] as int,
      cantidadAnyo_3: json['CANTIDAD_ANYO_3'] as int,
      cantidadAnyo_4: json['CANTIDAD_ANYO_4'] as int,
    );

Map<String, dynamic> _$$ClienteVentasArticuloDTOImplToJson(
        _$ClienteVentasArticuloDTOImpl instance) =>
    <String, dynamic>{
      'ARTICULO_ID': instance.articuloId,
      'DESCRIPCION': instance.descripcion,
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
