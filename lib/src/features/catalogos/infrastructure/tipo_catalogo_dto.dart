import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../domain/tipo_catalogo.dart';

part 'tipo_catalogo_dto.freezed.dart';
part 'tipo_catalogo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class TipoCatalogoDTO with _$TipoCatalogoDTO {
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
      descripcion: getDescriptionInLocalLanguage(),
    );
  }

  String getDescriptionInLocalLanguage() {
    final currentLocale = Intl.getCurrentLocale();
    if (currentLocale == 'en' && descripcionEN != null) {
      return descripcionEN!;
    } else if (currentLocale == 'fr' && descripcionFR != null) {
      return descripcionFR!;
    } else if (currentLocale == 'it' && descripcionIT != null) {
      return descripcionIT!;
    }
    // else if (currentLocale == 'pt' && descripcionPT != null) {
    //   return descripcionPT!;
    // }
    //else if (currentLocale == 'de' && descripcionDE != null) {
    //   return descripcionDE!;
    // } else if (currentLocale == 'ca' && descripcionCA != null) {
    //   return descripcionCA!;
    // } else if (currentLocale == 'gb' && descripcionGB != null) {
    //   return descripcionGB!;
    // } else if (currentLocale == 'hu' && descripcionHU != null) {
    //   return descripcionHU!;
    // }
    //else if (currentLocale == 'nl' && descripcionNL != null) {
    //   return descripcionNL!;
    // } else if (currentLocale == 'pl' && descripcionPL != null) {
    //   return descripcionPL!;
    // }
    //else if (currentLocale == 'ro' && descripcionRO != null) {
    //   return descripcionRO!;
    // } else if (currentLocale == 'ru' && descripcionRU != null) {
    //   return descripcionRU!;
    // } else if (currentLocale == 'cn' && descripcionCN != null) {
    //   return descripcionCN!;
    // } else if (currentLocale == 'el' && descripcionEL != null) {
    //   return descripcionEL!;
    // }

    return descripcionES;
  }
}
