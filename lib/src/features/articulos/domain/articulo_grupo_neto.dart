import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/infrastructure/promo_dto_lin_dto.dart';

part 'articulo_grupo_neto.freezed.dart';

@freezed
abstract class ArticuloGrupoNeto with _$ArticuloGrupoNeto {
  const ArticuloGrupoNeto._();
  const factory ArticuloGrupoNeto({
    required String articuloId,
    required String grupoNetoId,
    required String grupoNetoDescripcion,
    required int cantidadDesde,
    required Money precio,
    required String divisaId,
    required int tipoPrecio,
    required DateTime lastUpdated,
    required bool deleted,
    required bool isPromo,
    required double dto,
  }) = _ArticuloGrupoNeto;

  factory ArticuloGrupoNeto.fromPromo(
    PromoDtoLineaDTO promoDtoLinDTO,
    String divisaId,
  ) => ArticuloGrupoNeto(
    articuloId: promoDtoLinDTO.articuloId,
    grupoNetoId: promoDtoLinDTO.promoDtoId,
    grupoNetoDescripcion: promoDtoLinDTO.promoDtoId,
    cantidadDesde: promoDtoLinDTO.cantidadDesde,
    precio: Money.fromNum(promoDtoLinDTO.precio, isoCode: divisaId),
    divisaId: divisaId,
    tipoPrecio: promoDtoLinDTO.tipoPrecio ?? 1,
    lastUpdated: promoDtoLinDTO.lastUpdated,
    deleted: promoDtoLinDTO.deleted == 'S',
    isPromo: true,
    dto: promoDtoLinDTO.dto,
  );
}
