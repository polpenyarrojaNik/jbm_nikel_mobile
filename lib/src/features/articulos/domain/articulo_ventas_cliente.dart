import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'articulo_ventas_cliente.freezed.dart';

@freezed
class ArticuloVentasCliente with _$ArticuloVentasCliente {
  const ArticuloVentasCliente._();
  const factory ArticuloVentasCliente({
    required String clienteId,
    required String nombreCliente,
    required Money importeAnyo,
    required Money importeAnyo_1,
    required Money importeAnyo_2,
    required Money importeAnyo_3,
    required Money importeAnyo_4,
    required int cantidadAnyo,
    required int cantidadAnyo_1,
    required int cantidadAnyo_2,
    required int cantidadAnyo_3,
    required int cantidadAnyo_4,
  }) = _ArticuloVentasCliente;
}
