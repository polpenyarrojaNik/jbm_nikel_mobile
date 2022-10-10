import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'estadisticas_ultimos_precios.freezed.dart';

@freezed
class EstadisticasUltimosPrecios with _$EstadisticasUltimosPrecios {
  const EstadisticasUltimosPrecios._();
  const factory EstadisticasUltimosPrecios(
      {required String clienteId,
      String? nombreCliente,
      required String articuloId,
      String? descripcion,
      required int linea,
      required int? cantidad,
      required DateTime fecha,
      required Money precioDivisa,
      required String divisaId,
      required double tipoPrecio,
      required double descuento1,
      required double descuento2,
      required double descuento3,
      required DateTime lastUpdated,
      required bool deleted}) = _EstadisticasUltimosPrecios;
}
