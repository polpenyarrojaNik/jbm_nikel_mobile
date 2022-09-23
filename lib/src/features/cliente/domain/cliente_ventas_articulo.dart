import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'cliente_ventas_articulo.freezed.dart';

@freezed
class ClienteVentasArticulo with _$ClienteVentasArticulo {
  const ClienteVentasArticulo._();
  const factory ClienteVentasArticulo({
    required String articuloId,
    required String descripcion,
    required Money importeAnyo,
    required Money importeAnyo_1,
    required Money importeAnyo_2,
    required Money importeAnyo_3,
    required Money importeAnyo_4,
    required double cantidadAnyo,
    required double cantidadAnyo_1,
    required double cantidadAnyo_2,
    required double cantidadAnyo_3,
    required double cantidadAnyo_4,
  }) = _ClienteVentasArticulo;
}
