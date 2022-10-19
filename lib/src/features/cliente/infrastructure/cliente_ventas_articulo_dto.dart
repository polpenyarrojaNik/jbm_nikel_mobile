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
    @JsonKey(name: 'DESCRIPCION_ES') required String descripcionES,
    @JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,
    @JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,
    @JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,
    @JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,
    @JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,
    @JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,
    @JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,
    @JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,
    @JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,
    @JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,
    @JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,
    @JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,
    @JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,
    @JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,
    @JsonKey(name: 'IMPORTE_ANYO') required double importeAnyo,
    @JsonKey(name: 'IMPORTE_ANYO_1') required double importeAnyo_1,
    @JsonKey(name: 'IMPORTE_ANYO_2') required double importeAnyo_2,
    @JsonKey(name: 'IMPORTE_ANYO_3') required double importeAnyo_3,
    @JsonKey(name: 'IMPORTE_ANYO_4') required double importeAnyo_4,
    @JsonKey(name: 'CANTIDAD_ANYO') required int cantidadAnyo,
    @JsonKey(name: 'CANTIDAD_ANYO_1') required int cantidadAnyo_1,
    @JsonKey(name: 'CANTIDAD_ANYO_2') required int cantidadAnyo_2,
    @JsonKey(name: 'CANTIDAD_ANYO_3') required int cantidadAnyo_3,
    @JsonKey(name: 'CANTIDAD_ANYO_4') required int cantidadAnyo_4,
  }) = _ClienteVentasArticuloDTO;

  factory ClienteVentasArticuloDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteVentasArticuloDTOFromJson(json);

  ClienteVentasArticulo toDomain() {
    return ClienteVentasArticulo(
      articuloId: articuloId,
      descripcionES: descripcionES,
      descripcionEN: descripcionEN,
      descripcionFR: descripcionFR,
      descripcionDE: descripcionDE,
      descripcionCA: descripcionCA,
      descripcionGB: descripcionGB,
      descripcionHU: descripcionHU,
      descripcionIT: descripcionIT,
      descripcionNL: descripcionNL,
      descripcionPL: descripcionPL,
      descripcionPT: descripcionPT,
      descripcionRO: descripcionRO,
      descripcionRU: descripcionRU,
      descripcionCN: descripcionCN,
      descripcionEL: descripcionEL,
      importeAnyo: importeAnyo.toMoney(),
      importeAnyo_1: importeAnyo_1.toMoney(),
      importeAnyo_2: importeAnyo_2.toMoney(),
      importeAnyo_3: importeAnyo_3.toMoney(),
      importeAnyo_4: importeAnyo_4.toMoney(),
      cantidadAnyo: cantidadAnyo,
      cantidadAnyo_1: cantidadAnyo_1,
      cantidadAnyo_2: cantidadAnyo_2,
      cantidadAnyo_3: cantidadAnyo_3,
      cantidadAnyo_4: cantidadAnyo_4,
    );
  }
}
