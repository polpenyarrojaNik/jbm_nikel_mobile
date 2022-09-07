import 'package:freezed_annotation/freezed_annotation.dart';

part 'cliente_precio_neto.freezed.dart';

@freezed
class ClientePrecioNeto with _$ClientePrecioNeto {
  const ClientePrecioNeto._();
  const factory ClientePrecioNeto(
      {required String clienteId,
      required String articuloId,
      required double cantidadDesDe,
      required double precio,
      double? tipoPrecio,
      required DateTime lastUpdated,
      required bool deleted}) = _ClientePrecioNeto;
}
