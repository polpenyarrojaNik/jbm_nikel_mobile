import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'cliente_ventas_articulo.freezed.dart';

@freezed
abstract class ClienteVentasArticulo with _$ClienteVentasArticulo {
  const ClienteVentasArticulo._();
  const factory ClienteVentasArticulo({
    required String articuloId,
    required String descripcion,
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
  }) = _ClienteVentasArticulo;
}
