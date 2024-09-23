import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/domain/familia.dart';
import '../../../core/domain/subfamilia.dart';

part 'cliente_descuento.freezed.dart';

@freezed
class ClienteDescuento with _$ClienteDescuento {
  const ClienteDescuento._();
  const factory ClienteDescuento(
      {required String clienteId,
      required String articuloId,
      required String? descripcion,
      required Familia familia,
      required Subfamilia subfamilia,
      required int cantidadDesde,
      required double descuento,
      required DateTime lastUpdated,
      required bool deleted}) = _ClienteDescuento;
}
