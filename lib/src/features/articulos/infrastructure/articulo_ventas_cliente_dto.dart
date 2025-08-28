import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/helpers/extension.dart';
import '../domain/articulo_ventas_cliente.dart';

part 'articulo_ventas_cliente_dto.freezed.dart';
part 'articulo_ventas_cliente_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ArticuloVentasClienteDTO with _$ArticuloVentasClienteDTO {
  const ArticuloVentasClienteDTO._();
  const factory ArticuloVentasClienteDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'NOMBRE') required String nombreCliente,
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
  }) = _ArticuloVentasClienteDTO;

  factory ArticuloVentasClienteDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloVentasClienteDTOFromJson(json);

  ArticuloVentasCliente toDomain() {
    return ArticuloVentasCliente(
      clienteId: clienteId,
      nombreCliente: nombreCliente,
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
