import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/familia.dart';
import 'package:jbm_nikel_mobile/src/core/domain/subfamilia.dart';

part 'cliente_descuento.freezed.dart';

@freezed
class ClienteDescuento with _$ClienteDescuento {
  const ClienteDescuento._();
  const factory ClienteDescuento(
      {required String clienteId,
      required String articuloId,
      required Familia familia,
      required Subfamilia subfamilia,
      required double cantidadDesDe,
      required double descuento,
      required DateTime lastUpdated,
      required bool deleted}) = _ClienteDescuento;
}
