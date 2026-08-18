import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/infrastructure/promo_dto_lin_dto.dart';

part 'articulo_precio_tarifa.freezed.dart';

@freezed
abstract class ArticuloPrecioTarifa with _$ArticuloPrecioTarifa {
  const ArticuloPrecioTarifa._();
  const factory ArticuloPrecioTarifa({
    required String articuloId,
    required String tarifaId,
    String? tarifaDescripcion,
    required int cantidadDesde,
    required Money precio,
    required String divisaId,
    required int tipoPrecio,
    required DateTime lastUpdated,
    required bool deleted,
    required bool visibleSN,
    required bool isPromo,
  }) = _ArticuloPrecioTarifa;

  factory ArticuloPrecioTarifa.fromPromo(
    PromoDtoLineaDTO promoDtoLinDTO,
    String divisaId,
  ) => ArticuloPrecioTarifa(
    articuloId: promoDtoLinDTO.articuloId,
    tarifaId: promoDtoLinDTO.promoDtoId,
    cantidadDesde: promoDtoLinDTO.cantidadDesde,
    precio: Money.fromNum(promoDtoLinDTO.precio, isoCode: divisaId),
    divisaId: divisaId,
    tipoPrecio: promoDtoLinDTO.tipoPrecio ?? 1,
    lastUpdated: promoDtoLinDTO.lastUpdated,
    deleted: promoDtoLinDTO.deleted == 'S',
    visibleSN: true,
    isPromo: true,
  );
}
