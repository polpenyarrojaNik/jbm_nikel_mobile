import 'package:freezed_annotation/freezed_annotation.dart';

part 'descuento_general.freezed.dart';

@freezed
abstract class DescuentoGeneral with _$DescuentoGeneral {
  const DescuentoGeneral._();
  const factory DescuentoGeneral({
    required String descuentoGeneralId,
    required String articuloId,
    required String familiaId,
    required String subfamiliaId,
    required int cantidadDesde,
    required double descuento,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _DescuentoGeneral;
}
