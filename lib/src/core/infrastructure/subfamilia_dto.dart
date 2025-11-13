import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../domain/subfamilia.dart';
import 'remote_database.dart';

part 'subfamilia_dto.freezed.dart';
part 'subfamilia_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class SubfamiliaDTO
    with _$SubfamiliaDTO
    implements Insertable<SubfamiliaDTO> {
  const SubfamiliaDTO._();
  const factory SubfamiliaDTO({
    @JsonKey(name: 'SUBFAMILIA_ID') required String id,
    @JsonKey(name: 'FAMILIA_ID') required String familiaId,
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
  }) = _SubfamiliaDTO;

  factory SubfamiliaDTO.fromJson(Map<String, dynamic> json) =>
      _$SubfamiliaDTOFromJson(json);

  Subfamilia toDomain() {
    return Subfamilia(
      id: id,
      familiaId: familiaId,
      descripcion: getDescriptionInLocalLanguage(),
      lastUpdate: lastUpdated,
      deleted: (deleted == 'S'),
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
    } else if (currentLocale == 'pt' && descripcionPT != null) {
      return descripcionPT!;
    }

    return descripcionES;
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return SubfamiliaTableCompanion(
      id: Value(id),
      familiaId: Value(familiaId),
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

@UseRowClass(SubfamiliaDTO)
class SubfamiliaTable extends Table {
  @override
  String get tableName => 'SUBFAMILIAS';

  @override
  Set<Column> get primaryKey => {id, familiaId};

  TextColumn get id => text().named('SUBFAMILIA_ID')();
  TextColumn get familiaId => text().named('FAMILIA_ID')();
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
