import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

import '../../../core/infrastructure/remote_database.dart';
import '../domain/devolucion_estado.dart';

part 'devolucion_estado_dto.freezed.dart';
part 'devolucion_estado_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class DevolucionEstadoDTO
    with _$DevolucionEstadoDTO
    implements Insertable<DevolucionEstadoDTO> {
  const DevolucionEstadoDTO._();
  const factory DevolucionEstadoDTO({
    @JsonKey(name: 'DEVOLUCION_ESTADO_ID') required String id,
    @JsonKey(name: 'DESCRIPCION_ES') required String descripcionES,
    @JsonKey(name: 'DESCRIPCION_EN') String? descripcionEN,
    @JsonKey(name: 'DESCRIPCION_FR') String? descripcionFR,
    @JsonKey(name: 'DESCRIPCION_DE') String? descripcionDE,
    @JsonKey(name: 'DESCRIPCION_CA') String? descripcionCA,
    @JsonKey(name: 'DESCRIPCION_GB') String? descripcionGB,
    @JsonKey(name: 'DESCRIPCION_HU') String? descripcionHU,
    @JsonKey(name: 'DESCRIPCION_IT') String? descripcionIT,
    @JsonKey(name: 'DESCRIPCION_NL') String? descripcionNL,
    @JsonKey(name: 'DESCRIPCION_PT') String? descripcionPT,
    @JsonKey(name: 'DESCRIPCION_RO') String? descripcionRO,
    @JsonKey(name: 'DESCRIPCION_RU') String? descripcionRU,
    @JsonKey(name: 'DESCRIPCION_CN') String? descripcionCN,
    @JsonKey(name: 'DESCRIPCION_EL') String? descripcionEL,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _DevolucionEstadoDTO;

  factory DevolucionEstadoDTO.fromJson(Map<String, dynamic> json) =>
      _$DevolucionEstadoDTOFromJson(json);

  DevolucionEstado toDomain() {
    return DevolucionEstado(
      id: id,
      descripcion: getDescriptionInLocalLanguage(),
      lastUpdated: lastUpdated,
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
    return DevolucionEstadoTableCompanion(
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

@UseRowClass(DevolucionEstadoDTO)
class DevolucionEstadoTable extends Table {
  @override
  String get tableName => 'DEVOLUCIONES_ESTADOS';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('DEVOLUCION_ESTADO_ID')();
  TextColumn get descripcionES => text().named('DESCRIPCION_ES')();
  TextColumn get descripcionEN => text().nullable().named('DESCRIPCION_EN')();
  TextColumn get descripcionFR => text().nullable().named('DESCRIPCION_FR')();
  TextColumn get descripcionDE => text().nullable().named('DESCRIPCION_DE')();
  TextColumn get descripcionCA => text().nullable().named('DESCRIPCION_CA')();
  TextColumn get descripcionGB => text().nullable().named('DESCRIPCION_GB')();
  TextColumn get descripcionHU => text().nullable().named('DESCRIPCION_HU')();
  TextColumn get descripcionIT => text().nullable().named('DESCRIPCION_IT')();
  TextColumn get descripcionNL => text().nullable().named('DESCRIPCION_NL')();
  TextColumn get descripcionPT => text().nullable().named('DESCRIPCION_PT')();
  TextColumn get descripcionRO => text().nullable().named('DESCRIPCION_RO')();
  TextColumn get descripcionRU => text().nullable().named('DESCRIPCION_RU')();
  TextColumn get descripcionCN => text().nullable().named('DESCRIPCION_CN')();
  TextColumn get descripcionEL => text().nullable().named('DESCRIPCION_EL')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
