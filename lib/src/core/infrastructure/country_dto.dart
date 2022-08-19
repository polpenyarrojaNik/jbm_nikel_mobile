import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/country.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

part 'country_dto.freezed.dart';
part 'country_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CountryDTO with _$CountryDTO implements Insertable<CountryDTO> {
  const CountryDTO._();
  const factory CountryDTO({
    @JsonKey(name: 'PAIS_ID') required String id,
    @JsonKey(name: 'CODIGO_ISO') String? isoCode,
    @JsonKey(name: 'DESCRIPCION_ES') required String descriptionES,
    @JsonKey(name: 'DESCRIPCION_EN') String? descriptionEN,
    @JsonKey(name: 'DESCRIPCION_FR') String? descriptionFR,
    @JsonKey(name: 'DESCRIPCION_DE') String? descriptionDE,
    @JsonKey(name: 'DESCRIPCION_CA') String? descriptionCA,
    @JsonKey(name: 'DESCRIPCION_GB') String? descriptionGB,
    @JsonKey(name: 'DESCRIPCION_HU') String? descriptionHU,
    @JsonKey(name: 'DESCRIPCION_IT') String? descriptionIT,
    @JsonKey(name: 'DESCRIPCION_NL') String? descriptionNL,
    @JsonKey(name: 'DESCRIPCION_PL') String? descriptionPL,
    @JsonKey(name: 'DESCRIPCION_PT') String? descriptionPT,
    @JsonKey(name: 'DESCRIPCION_RO') String? descriptionRO,
    @JsonKey(name: 'DESCRIPCION_RU') String? descriptionRU,
    @JsonKey(name: 'DESCRIPCION_CN') String? descriptionCN,
    @JsonKey(name: 'DESCRIPCION_EL') String? descriptionEL,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CountryDTO;

  factory CountryDTO.fromJson(Map<String, dynamic> json) =>
      _$CountryDTOFromJson(json);

  Country toDomain() {
    return Country(
        id: id,
        isoCode: isoCode,
        description: getDescription(),
        lastUpdate: lastUpdated,
        deleted: (deleted == 'S') ? true : false);
  }

  String getDescription() {
    if (descriptionEN != null) {
      return descriptionEN!;
    } else if (descriptionFR != null) {
      return descriptionFR!;
    } else if (descriptionDE != null) {
      return descriptionDE!;
    } else if (descriptionGB != null) {
      return descriptionGB!;
    } else if (descriptionCA != null) {
      return descriptionCA!;
    }
    return descriptionES;
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CountryTableCompanion(
      id: Value(id),
      isoCode: Value(isoCode),
      descriptionES: Value(descriptionES),
      descriptionEN: Value(descriptionEN),
      descriptionFR: Value(descriptionFR),
      descriptionDE: Value(descriptionDE),
      descriptionCA: Value(descriptionCA),
      descriptionGB: Value(descriptionGB),
      descriptionHU: Value(descriptionHU),
      descriptionIT: Value(descriptionIT),
      descriptionNL: Value(descriptionNL),
      descriptionPL: Value(descriptionPL),
      descriptionPT: Value(descriptionPT),
      descriptionRO: Value(descriptionRO),
      descriptionRU: Value(descriptionRU),
      descriptionCN: Value(descriptionCN),
      descriptionEL: Value(descriptionEL),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CountryDTO)
class CountryTable extends Table {
  @override
  String get tableName => 'PAISES';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text()();
  TextColumn get isoCode => text().nullable()();
  TextColumn get descriptionES => text()();
  TextColumn get descriptionEN => text().nullable()();
  TextColumn get descriptionFR => text().nullable()();
  TextColumn get descriptionDE => text().nullable()();
  TextColumn get descriptionCA => text().nullable()();
  TextColumn get descriptionGB => text().nullable()();
  TextColumn get descriptionHU => text().nullable()();
  TextColumn get descriptionIT => text().nullable()();
  TextColumn get descriptionNL => text().nullable()();
  TextColumn get descriptionPL => text().nullable()();
  TextColumn get descriptionPT => text().nullable()();
  TextColumn get descriptionRO => text().nullable()();
  TextColumn get descriptionRU => text().nullable()();
  TextColumn get descriptionCN => text().nullable()();
  TextColumn get descriptionEL => text().nullable()();
  DateTimeColumn get lastUpdated => dateTime()();
  TextColumn get deleted => text().withDefault(const Constant('N'))();
}
