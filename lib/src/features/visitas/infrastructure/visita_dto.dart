import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/visitas/domain/visita.dart';

part 'visita_dto.freezed.dart';
part 'visita_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class VisitaDTO with _$VisitaDTO implements Insertable<VisitaDTO> {
  const VisitaDTO._();
  const factory VisitaDTO({
    @JsonKey(name: 'VISITA_ID') required String id,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'FECHA') required DateTime fecha,
    @JsonKey(name: 'NUM_EMPL') required String numEmpl,
    @JsonKey(name: 'CONTACTO') String? contacto,
    @JsonKey(name: 'RESUMEN') String? resumen,
    @JsonKey(name: 'LATITUD') required double latitud,
    @JsonKey(name: 'LONGITUD') required double longitud,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _VisitaDTO;

  factory VisitaDTO.fromJson(Map<String, dynamic> json) =>
      _$VisitaDTOFromJson(json);

  Visita toDomain() {
    return Visita(
      id: id,
      clienteId: clienteId,
      fecha: fecha,
      numEmpl: numEmpl,
      contacto: contacto,
      resumen: resumen,
      latitud: latitud,
      longitud: longitud,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return VisitaTableCompanion(
      id: Value(id),
      clienteId: Value(clienteId),
      fecha: Value(fecha),
      numEmpl: Value(numEmpl),
      contacto: Value(contacto),
      resumen: Value(resumen),
      latitud: Value(latitud),
      longitud: Value(longitud),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(VisitaDTO)
class VisitaTable extends Table {
  @override
  String get tableName => 'VISITAS';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('VISITA_ID')();
  TextColumn get clienteId => text().named('CLIENTE_ID')();
  DateTimeColumn get fecha => dateTime().named('FECHA')();
  TextColumn get numEmpl => text().named('NUM_EMPL')();
  TextColumn get contacto => text().nullable().named('CONTACTO')();
  TextColumn get resumen => text().nullable().named('RESUMEN')();
  RealColumn get latitud => real().named('LATITUD')();
  RealColumn get longitud => real().named('LONGITUD')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
