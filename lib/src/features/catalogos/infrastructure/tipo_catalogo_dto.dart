import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/tipo_catalogo.dart';

part 'tipo_catalogo_dto.freezed.dart';
part 'tipo_catalogo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class TipoCatalogoDTO with _$TipoCatalogoDTO {
  const TipoCatalogoDTO._();
  const factory TipoCatalogoDTO({
    @JsonKey(name: 'TIPO_CATALOGO_ID') required String tipoCatalogoId,
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

  factory TipoCatalogoDTO.fromJson(Map<String, dynamic> json) =>
      _$TipoCatalogoDTOFromJson(json);

  TipoCatalogo toDomain() {
    return TipoCatalogo(
      tipoCatalogoId: tipoCatalogoId,
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
