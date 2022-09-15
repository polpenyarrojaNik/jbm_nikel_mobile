import 'package:freezed_annotation/freezed_annotation.dart';

part 'estadisticas_ultimos_precios.freezed.dart';

@freezed
class EstadisticasUltimosPrecios with _$EstadisticasUltimosPrecios {
  const EstadisticasUltimosPrecios._();
  const factory EstadisticasUltimosPrecios(
      {required String clienteId,
      String? nombreCliente,
      required String articuloId,
      required DateTime fecha,
      required double precioDivisa,
      required double tipoPrecio,
      required double descuento1,
      required double descuento2,
      required double descuento3,
      required DateTime lastUpdated,
      required bool deleted}) = _EstadisticasUltimosPrecios;
}
