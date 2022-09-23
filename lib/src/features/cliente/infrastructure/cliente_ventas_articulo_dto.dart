import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';

import '../domain/cliente_ventas_articulo.dart';

part 'cliente_ventas_articulo_dto.freezed.dart';
part 'cliente_ventas_articulo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteVentasArticuloDTO with _$ClienteVentasArticuloDTO {
  const ClienteVentasArticuloDTO._();
  const factory ClienteVentasArticuloDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'DESCRIPCION_ES') required String descripcion,
    @JsonKey(name: 'IMPORTE_ANYO') required double importeAnyo,
    @JsonKey(name: 'IMPORTE_ANYO_1') required double importeAnyo_1,
    @JsonKey(name: 'IMPORTE_ANYO_2') required double importeAnyo_2,
    @JsonKey(name: 'IMPORTE_ANYO_3') required double importeAnyo_3,
    @JsonKey(name: 'IMPORTE_ANYO_4') required double importeAnyo_4,
    @JsonKey(name: 'CANTIDAD_ANYO') required double cantidadAnyo,
    @JsonKey(name: 'CANTIDAD_ANYO_1') required double cantidadAnyo_1,
    @JsonKey(name: 'CANTIDAD_ANYO_2') required double cantidadAnyo_2,
    @JsonKey(name: 'CANTIDAD_ANYO_3') required double cantidadAnyo_3,
    @JsonKey(name: 'CANTIDAD_ANYO_4') required double cantidadAnyo_4,
  }) = _ClienteVentasArticuloDTO;

  factory ClienteVentasArticuloDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteVentasArticuloDTOFromJson(json);

  ClienteVentasArticulo toDomain() {
    return ClienteVentasArticulo(
      articuloId: articuloId,
      descripcion: descripcion,
      importeAnyo: importeAnyo.parseMoney(importeAnyo, 'EU'),
      importeAnyo_1: importeAnyo_1.parseMoney(importeAnyo_1, 'EU'),
      importeAnyo_2: importeAnyo_2.parseMoney(importeAnyo_2, 'EU'),
      importeAnyo_3: importeAnyo_3.parseMoney(importeAnyo_3, 'EU'),
      importeAnyo_4: importeAnyo_4.parseMoney(importeAnyo_4, 'EU'),
      cantidadAnyo: cantidadAnyo,
      cantidadAnyo_1: cantidadAnyo_1,
      cantidadAnyo_2: cantidadAnyo_2,
      cantidadAnyo_3: cantidadAnyo_3,
      cantidadAnyo_4: cantidadAnyo_4,
    );
  }
}
