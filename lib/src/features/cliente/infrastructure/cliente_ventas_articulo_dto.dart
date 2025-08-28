import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/helpers/extension.dart';
import '../domain/cliente_ventas_articulo.dart';

part 'cliente_ventas_articulo_dto.freezed.dart';
part 'cliente_ventas_articulo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ClienteVentasArticuloDTO with _$ClienteVentasArticuloDTO {
  const ClienteVentasArticuloDTO._();
  const factory ClienteVentasArticuloDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'DESCRIPCION') required String descripcion,
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
      descripcion: descripcion,
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
