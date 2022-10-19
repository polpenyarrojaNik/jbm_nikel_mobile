import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';

import '../domain/articulo_top.dart';

part 'articulo_top_dto.freezed.dart';
part 'articulo_top_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloTopDTO with _$ArticuloTopDTO {
  const ArticuloTopDTO._();
  const factory ArticuloTopDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'DESCRIPCION_ES') required String descripcion,
    @JsonKey(name: 'VENTAS_TOTAL') required double ventasTotal,
    @JsonKey(name: 'VENTAS_CLIENTE') required double ventasCliente,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
  }) = _ArticuloTopDTO;

  factory ArticuloTopDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloTopDTOFromJson(json);

  ArticuloTop toDomain() {
    return ArticuloTop(
      articuloId: articuloId,
      descripcion: descripcion,
      ventasTotal: ventasTotal.toMoney(currencyId: divisaId),
      ventasCliente: ventasCliente.toMoney(currencyId: divisaId),
    );
  }
}
