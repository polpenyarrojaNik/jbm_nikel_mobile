import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../core/infrastructure/remote_database.dart';
import '../domain/visita_motivos_no_venta.dart';

part 'visita_motivos_no_venta_dto.freezed.dart';
part 'visita_motivos_no_venta_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class VisitaMotivoNoVentaDTO
    with _$VisitaMotivoNoVentaDTO
    implements Insertable<VisitaMotivoNoVentaDTO> {
  const VisitaMotivoNoVentaDTO._();
  const factory VisitaMotivoNoVentaDTO({
    @JsonKey(name: 'CODIGO') required int id,
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
  }) = _VisitaMotivoNoVentaDTO;

  factory VisitaMotivoNoVentaDTO.fromJson(Map<String, dynamic> json) =>
      _$VisitaMotivoNoVentaDTOFromJson(json);

  VisitaMotivoNoVenta toDomain() {
    return VisitaMotivoNoVenta(
      id: id,
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
    }

    return descripcionES;
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return VisitaMotivoNoVentaTableCompanion(
      id: Value(id),
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

@UseRowClass(VisitaMotivoNoVentaDTO)
class VisitaMotivoNoVentaTable extends Table {
  @override
  String get tableName => 'VISITA_MOTIVOS_NO_VENTA';

  @override
  Set<Column> get primaryKey => {id};

  IntColumn get id => integer().named('CODIGO')();
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

  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
