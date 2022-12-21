import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/tipo_precio_catalogo.dart';

part 'tipo_catalogo_precio_dto.freezed.dart';
part 'tipo_catalogo_precio_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class TipoPrecioCatalogoDTO with _$TipoPrecioCatalogoDTO {
  const TipoPrecioCatalogoDTO._();
  const factory TipoPrecioCatalogoDTO({
    @JsonKey(name: 'TIPO_PRECIO_CATALOGO_ID')
        required String tipoPrecioCatalogoId,
    @JsonKey(name: 'DESCRIPCION_ES') required String descripcionES,
    @JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,
    @JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,
    @JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,
    @JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,
    @JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,
    @JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,
    @JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,
    @JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,
    @JsonKey(name: 'DESCRIPCION_PL') String? descripcionPL,
  }) = _TipoCatalogoDTO;

  factory TipoPrecioCatalogoDTO.fromJson(Map<String, dynamic> json) =>
      _$TipoPrecioCatalogoDTOFromJson(json);

  TipoPrecioCatalogo toDomain() {
    return TipoPrecioCatalogo(
      tipoPrecioCatalogoId: tipoPrecioCatalogoId,
      descripcionES: descripcionES,
      descripcionEN: descripcionEN,
      descripcionFR: descripcionFR,
      descripcionDE: descripcionDE,
      descripcionCA: descripcionCA,
      descripcionGB: descripcionGB,
      descripcionHU: descripcionHU,
      descripcionIT: descripcionIT,
      descripcionNL: descripcionNL,
      descripcionPL: descripcionPL,
    );
  }
}
