import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'cliente_precio_neto.freezed.dart';

@freezed
class ClientePrecioNeto with _$ClientePrecioNeto {
  const ClientePrecioNeto._();
  const factory ClientePrecioNeto(
      {required String clienteId,
      required String articuloId,
      required String descripcion,
      required int cantidadDesde,
      required Money precio,
      required int tipoPrecio,
      required double dtoAdicional,
      required DateTime lastUpdated,
      required bool deleted}) = _ClientePrecioNeto;
}
