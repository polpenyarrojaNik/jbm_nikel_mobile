import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'remote_database.dart';

part 'promo_dto_cab_dto.freezed.dart';
part 'promo_dto_cab_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class PromoDtoCabDTO
    with _$PromoDtoCabDTO
    implements Insertable<PromoDtoCabDTO> {
  const PromoDtoCabDTO._();
  const factory PromoDtoCabDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PROMO_DTO_ID') required String promoDtoId,
    @JsonKey(name: 'NOMBRE') required String nombre,
    @JsonKey(name: 'FECHA_DESDE') required DateTime fechaDesde,
    @JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PromoDtoCabDTO;

  factory PromoDtoCabDTO.fromJson(Map<String, dynamic> json) =>
      _$PromoDtoCabDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PromoDtoCabTableCompanion(
      empresaId: Value(empresaId),
      promoDtoId: Value(promoDtoId),
      nombre: Value(nombre),
      fechaDesde: Value(fechaDesde),
      fechaHasta: Value(fechaHasta),
      divisaId: Value(divisaId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PromoDtoCabDTO)
class PromoDtoCabTable extends Table {
  @override
  String get tableName => 'promo_dto_cab';

  @override
  Set<Column> get primaryKey => {empresaId, promoDtoId};

  TextColumn get empresaId => text().named('EMPRESA_ID')();
  TextColumn get promoDtoId => text().named('PROMO_DTO_ID')();
  TextColumn get nombre => text().named('NOMBRE')();
  DateTimeColumn get fechaDesde => dateTime().named('FECHA_DESDE')();
  DateTimeColumn get fechaHasta => dateTime().nullable().named('FECHA_HASTA')();
  TextColumn get divisaId => text().named('DIVISA_ID')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
