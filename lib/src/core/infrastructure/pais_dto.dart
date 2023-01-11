import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';

part 'pais_dto.freezed.dart';
part 'pais_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class PaisDTO with _$PaisDTO implements Insertable<PaisDTO> {
  const PaisDTO._();
  const factory PaisDTO({
    @JsonKey(name: 'PAIS_ID') required String id,
    @JsonKey(name: 'CODIGO_ISO') String? isoCode,
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
    @JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,
    @JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,
    @JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,
    @JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,
    @JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PaisDTO;

  factory PaisDTO.fromJson(Map<String, dynamic> json) =>
      _$PaisDTOFromJson(json);

  Pais toDomain() {
    return Pais(
        id: id,
        isoCode: isoCode,
        descripcion: getDescriptionInLocalLanguage(),
        lastUpdate: lastUpdated,
        deleted: (deleted == 'S') ? true : false);
  }

  String getDescriptionInLocalLanguage() {
    final currentLocale = Intl.getCurrentLocale();
    if (currentLocale == 'es') {
    } else if (currentLocale == 'en' && descripcionEN != null) {
      return descripcionEN!;
    } else if (currentLocale == 'fr' && descripcionFR != null) {
      return descripcionFR!;
    } else if (currentLocale == 'it' && descripcionIT != null) {
      return descripcionIT!;
    } else if (currentLocale == 'pt' && descripcionPT != null) {
      return descripcionPT!;
    }
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

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PaisTableCompanion(
      id: Value(id),
      isoCode: Value(isoCode),
      descripcionES: Value(descripcionES),
      descripcionEN: Value(descripcionEN),
      descripcionFR: Value(descripcionFR),
      descripcionDE: Value(descripcionDE),
      descripcionCA: Value(descripcionCA),
      descripcionGB: Value(descripcionGB),
      descripcionHU: Value(descripcionHU),
      descripcionIT: Value(descripcionIT),
      descripcionNL: Value(descripcionNL),
      descripcionPL: Value(descripcionPL),
      descripcionPT: Value(descripcionPT),
      descripcionRO: Value(descripcionRO),
      descripcionRU: Value(descripcionRU),
      descripcionCN: Value(descripcionCN),
      descripcionEL: Value(descripcionEL),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PaisDTO)
class PaisTable extends Table {
  @override
  String get tableName => 'PAISES';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('PAIS_ID')();
  TextColumn get isoCode => text().nullable().named('CODIGO_ISO')();
  TextColumn get descripcionES => text().named('DESCRIPCION_ES')();
  TextColumn get descripcionEN => text().nullable().named('DESCRIPCION_EN')();
  TextColumn get descripcionFR => text().nullable().named('DESCRIPCION_FR')();
  TextColumn get descripcionDE => text().nullable().named('DESCRIPCION_DE')();
  TextColumn get descripcionCA => text().nullable().named('DESCRIPCION_CA')();
  TextColumn get descripcionGB => text().nullable().named('DESCRIPCION_GB')();
  TextColumn get descripcionHU => text().nullable().named('DESCRIPCION_HU')();
  TextColumn get descripcionIT => text().nullable().named('DESCRIPCION_IT')();
  TextColumn get descripcionNL => text().nullable().named('DESCRIPCION_NL')();
  TextColumn get descripcionPL => text().nullable().named('DESCRIPCION_PL')();
  TextColumn get descripcionPT => text().nullable().named('DESCRIPCION_PT')();
  TextColumn get descripcionRO => text().nullable().named('DESCRIPCION_RO')();
  TextColumn get descripcionRU => text().nullable().named('DESCRIPCION_RU')();
  TextColumn get descripcionCN => text().nullable().named('DESCRIPCION_CN')();
  TextColumn get descripcionEL => text().nullable().named('DESCRIPCION_EL')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
