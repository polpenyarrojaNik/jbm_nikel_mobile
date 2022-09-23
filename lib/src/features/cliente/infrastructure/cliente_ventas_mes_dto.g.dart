// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_ventas_mes_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClienteVentasMesDTO _$$_ClienteVentasMesDTOFromJson(
        Map<String, dynamic> json) =>
    _$_ClienteVentasMesDTO(
      mes: json['MES'] as int,
      importeAnyo: (json['IMPORTE_ANYO'] as num).toDouble(),
      importeAnyo_1: (json['IMPORTE_ANYO_1'] as num).toDouble(),
      importeAnyo_2: (json['IMPORTE_ANYO_2'] as num).toDouble(),
      importeAnyo_3: (json['IMPORTE_ANYO_3'] as num).toDouble(),
      importeAnyo_4: (json['IMPORTE_ANYO_4'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ClienteVentasMesDTOToJson(
        _$_ClienteVentasMesDTO instance) =>
    <String, dynamic>{
      'MES': instance.mes,
      'IMPORTE_ANYO': instance.importeAnyo,
      'IMPORTE_ANYO_1': instance.importeAnyo_1,
      'IMPORTE_ANYO_2': instance.importeAnyo_2,
      'IMPORTE_ANYO_3': instance.importeAnyo_3,
      'IMPORTE_ANYO_4': instance.importeAnyo_4,
    };
