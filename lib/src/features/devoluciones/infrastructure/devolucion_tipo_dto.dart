import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/devolucion_tipo.dart';

import '../../../core/infrastructure/remote_database.dart';

part 'devolucion_tipo_dto.freezed.dart';
part 'devolucion_tipo_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class DevolucionTipoDTO
    with _$DevolucionTipoDTO
    implements Insertable<DevolucionTipoDTO> {
  const DevolucionTipoDTO._();
  const factory DevolucionTipoDTO({
    @JsonKey(name: 'DEVOLUCION_TIPO_ID') required String id,
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
  }) = _DevolucionTipoDTO;

  factory DevolucionTipoDTO.fromJson(Map<String, dynamic> json) =>
      _$DevolucionTipoDTOFromJson(json);

  DevolucionTipo toDomain() {
    return DevolucionTipo(
      id: id,
      descripcionES: descripcionES,
      descripcionEN: descripcionEN,
      descripcionFR: descripcionFR,
      descripcionDE: descripcionDE,
      descripcionCA: descripcionCA,
      descripcionGB: descripcionGB,
      descripcionHU: descripcionHU,
      descripcionIT: descripcionIT,
      descripcionNL: descripcionNL,
      descripcionPT: descripcionPT,
      descripcionRO: descripcionRO,
      descripcionRU: descripcionRU,
      descripcionCN: descripcionCN,
      descripcionEL: descripcionEL,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return DevolucionTipoTableCompanion(
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

@UseRowClass(DevolucionTipoDTO)
class DevolucionTipoTable extends Table {
  @override
  String get tableName => 'DEVOLUCIONES_TIPOS';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('DEVOLUCION_TIPO_ID')();
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
