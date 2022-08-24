import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/visits/domain/visit.dart';

part 'visit_dto.freezed.dart';
part 'visit_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class VisitDTO with _$VisitDTO implements Insertable<VisitDTO> {
  const VisitDTO._();
  const factory VisitDTO({
    @JsonKey(name: 'VISITA_ID') required String id,
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'FECHA') required DateTime date,
    @JsonKey(name: 'NUM_EMPL') required String numEmpl,
    @JsonKey(name: 'CONTACTO') String? contact,
    @JsonKey(name: 'RESUMEN') String? summary,
    @JsonKey(name: 'LATITUD') required double latitude,
    @JsonKey(name: 'LONGITUD') required double longitude,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _VisitDTO;

  factory VisitDTO.fromJson(Map<String, dynamic> json) =>
      _$VisitDTOFromJson(json);

  Visit toDomain() {
    return Visit(
      id: id,
      customerId: customerId,
      date: date,
      numEmpl: numEmpl,
      contact: contact,
      summary: summary,
      latitude: latitude,
      longitude: longitude,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return VisitTableCompanion(
      id: Value(id),
      customerId: Value(customerId),
      date: Value(date),
      numEmpl: Value(numEmpl),
      contact: Value(contact),
      summary: Value(summary),
      latitude: Value(latitude),
      longitude: Value(longitude),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(VisitDTO)
class VisitTable extends Table {
  @override
  String get tableName => 'VISITAS';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('VISITA_ID')();
  TextColumn get customerId => text().named('CLIENTE_ID')();
  DateTimeColumn get date => dateTime().named('FECHA')();
  TextColumn get numEmpl => text().named('NUM_EMPL')();
  TextColumn get contact => text().nullable().named('CONTACTO')();
  TextColumn get summary => text().nullable().named('RESUMEN')();
  RealColumn get latitude => real().named('LATITUD')();
  RealColumn get longitude => real().named('LONGITUD')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
