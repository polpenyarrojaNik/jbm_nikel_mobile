import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../domain/idioma_catalogo.dart';

part 'idioma_catalogo_dto.freezed.dart';
part 'idioma_catalogo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class IdiomaCatalogoDTO with _$IdiomaCatalogoDTO {
  const IdiomaCatalogoDTO._();
  const factory IdiomaCatalogoDTO({
    @JsonKey(name: 'IDIOMA_ID') required String idiomaId,
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
  }) = _IdiomaCatalogoDTO;

  factory IdiomaCatalogoDTO.fromJson(Map<String, dynamic> json) =>
      _$IdiomaCatalogoDTOFromJson(json);

  IdiomaCatalogo toDomain() {
    return IdiomaCatalogo(
      idiomaId: idiomaId,
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

    return descripcionES;
  }
}
