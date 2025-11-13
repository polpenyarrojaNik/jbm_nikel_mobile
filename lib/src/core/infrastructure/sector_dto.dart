import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../domain/sector.dart';
import 'remote_database.dart';

part 'sector_dto.freezed.dart';
part 'sector_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class SectorDTO with _$SectorDTO implements Insertable<SectorDTO> {
  const SectorDTO._();
  const factory SectorDTO({
    @JsonKey(name: 'sector_id') required String id,
    @JsonKey(name: 'alta_sn') required String altaSN,
    @JsonKey(name: 'descripcion_es') required String descripcionES,
    @JsonKey(name: 'descripcion_en') String? descripcionEN,
    @JsonKey(name: 'descripcion_fr') String? descripcionFR,
    @JsonKey(name: 'descripcion_de') String? descripcionDE,
    @JsonKey(name: 'descripcion_ca') String? descripcionCA,
    @JsonKey(name: 'descripcion_gb') String? descripcionGB,
    @JsonKey(name: 'descripcion_hu') String? descripcionHU,
    @JsonKey(name: 'descripcion_it') String? descripcionIT,
    @JsonKey(name: 'descripcion_nl') String? descripcionNL,
    @JsonKey(name: 'descripcion_pl') String? descripcionPL,
    @JsonKey(name: 'last_updated') required DateTime lastUpdated,
    @JsonKey(name: 'deleted') @Default('N') String deleted,
  }) = _PaisDTO;

  factory SectorDTO.fromJson(Map<String, dynamic> json) =>
      _$SectorDTOFromJson(json);

  Sector toDomain() {
    return Sector(
      id: id,
      isAlta: altaSN == 'S',
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
    }

    return descripcionES;
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return SectorTableCompanion(
      id: Value(id),
      altaSN: Value(altaSN),
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

@UseRowClass(SectorDTO)
class SectorTable extends Table {
  @override
  String get tableName => 'SECTORES';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('sector_id')();
  TextColumn get altaSN => text().named('alta_sn')();
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
