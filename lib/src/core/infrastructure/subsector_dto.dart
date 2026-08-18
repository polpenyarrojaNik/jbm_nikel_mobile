import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../domain/sector.dart';
import '../domain/subsector.dart';
import 'remote_database.dart';

part 'subsector_dto.freezed.dart';
part 'subsector_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class SubsectorDTO
    with _$SubsectorDTO
    implements Insertable<SubsectorDTO> {
  const SubsectorDTO._();
  const factory SubsectorDTO({
    @JsonKey(name: 'SECTOR_ID') required String sectorId,
    @JsonKey(name: 'SUBSECTOR_ID') required String subsectorId,
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
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PaisDTO;

  factory SubsectorDTO.fromJson(Map<String, dynamic> json) =>
      _$SubsectorDTOFromJson(json);

  Subsector toDomain(Sector sector) {
    return Subsector(
      subsectorId: subsectorId,
      sector: sector,
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
    } else if (currentLocale == 'pl' && descripcionPL != null) {
      return descripcionPL!;
    } else if (currentLocale == 'de' && descripcionDE != null) {
      return descripcionDE!;
    }

    return descripcionES;
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return SubsectorTableCompanion(
      sectorId: Value(sectorId),
      subsectorId: Value(subsectorId),
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
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(SubsectorDTO)
class SubsectorTable extends Table {
  @override
  String get tableName => 'SUBSECTORES';

  @override
  Set<Column> get primaryKey => {sectorId, subsectorId};

  TextColumn get sectorId => text().named('sector_id')();
  TextColumn get subsectorId => text().named('subsector_id')();
  TextColumn get descripcionES => text().named('descripcion_es')();
  TextColumn get descripcionEN => text().nullable().named('descripcion_en')();
  TextColumn get descripcionFR => text().nullable().named('descripcion_fr')();
  TextColumn get descripcionDE => text().nullable().named('descripcion_de')();
  TextColumn get descripcionCA => text().nullable().named('descripcion_ca')();
  TextColumn get descripcionGB => text().nullable().named('descripcion_gb')();
  TextColumn get descripcionHU => text().nullable().named('descripcion_hu')();
  TextColumn get descripcionIT => text().nullable().named('descripcion_it')();
  TextColumn get descripcionNL => text().nullable().named('descripcion_nl')();
  TextColumn get descripcionPL => text().nullable().named('descripcion_pl')();
  DateTimeColumn get lastUpdated => dateTime().named('last_updated')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('deleted')();
}
