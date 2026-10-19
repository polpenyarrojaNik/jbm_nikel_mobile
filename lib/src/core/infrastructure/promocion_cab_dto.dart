import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'remote_database.dart';

part 'promocion_cab_dto.freezed.dart';
part 'promocion_cab_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class PromocionCabDTO
    with _$PromocionCabDTO
    implements Insertable<PromocionCabDTO> {
  const PromocionCabDTO._();
  const factory PromocionCabDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PROMO_ID') required String promoId,
    @JsonKey(name: 'NOMBRE') required String nombre,
    @JsonKey(name: 'FECHA_DESDE') required DateTime fechaDesde,
    @JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,
    @JsonKey(name: 'DIVISA_ID') String? divisaId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PromocionCabDTO;

  factory PromocionCabDTO.fromJson(Map<String, dynamic> json) =>
      _$PromocionCabDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PromocionCabTableCompanion(
      empresaId: Value(empresaId),
      promoId: Value(promoId),
      nombre: Value(nombre),
      fechaDesde: Value(fechaDesde),
      fechaHasta: Value(fechaHasta),
      divisaId: Value(divisaId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PromocionCabDTO)
class PromocionCabTable extends Table {
  @override
  String get tableName => 'promocion_cab';

  @override
  Set<Column> get primaryKey => {empresaId, promoId};

  TextColumn get empresaId => text().named('empresa_id')();
  TextColumn get promoId => text().named('promo_id')();
  TextColumn get nombre => text().named('nombre')();
  DateTimeColumn get fechaDesde => dateTime().named('fecha_desde')();
  DateTimeColumn get fechaHasta => dateTime().nullable().named('fecha_hasta')();
  TextColumn get divisaId => text().nullable().named('divisa_id')();
  DateTimeColumn get lastUpdated => dateTime().named('last_updated')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('deleted')();
}
