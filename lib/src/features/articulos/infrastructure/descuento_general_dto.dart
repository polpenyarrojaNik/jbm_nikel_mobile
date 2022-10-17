import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/descuento_general.dart';

part 'descuento_general_dto.freezed.dart';
part 'descuento_general_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class DescuentoGeneralDTO
    with _$DescuentoGeneralDTO
    implements Insertable<DescuentoGeneralDTO> {
  const DescuentoGeneralDTO._();
  const factory DescuentoGeneralDTO({
    @JsonKey(name: 'DESCUENTO_GENERAL_ID') required String descuentoGeneralId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'FAMILIA_ID') required String familiaId,
    @JsonKey(name: 'SUBFAMILIA_ID') required String subfamiliaId,
    @JsonKey(name: 'CANTIDAD_DESDE') required int cantidadDesde,
    @JsonKey(name: 'DESCUENTO') required double descuento,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _DescuentoGeneralDTO;

  factory DescuentoGeneralDTO.fromJson(Map<String, dynamic> json) =>
      _$DescuentoGeneralDTOFromJson(json);

  DescuentoGeneral toDomain() {
    return DescuentoGeneral(
      descuentoGeneralId: descuentoGeneralId,
      articuloId: articuloId,
      familiaId: familiaId,
      subfamiliaId: subfamiliaId,
      cantidadDesde: cantidadDesde,
      descuento: descuento,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return DescuentoGeneralTableCompanion(
      descuentoGeneralId: Value(descuentoGeneralId),
      articuloId: Value(articuloId),
      familiaId: Value(familiaId),
      subfamiliaId: Value(subfamiliaId),
      cantidadDesde: Value(cantidadDesde),
      descuento: Value(descuento),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(DescuentoGeneralDTO)
class DescuentoGeneralTable extends Table {
  TextColumn get descuentoGeneralId => text().named('DESCUENTO_GENERAL_ID')();
  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get familiaId => text().named('FAMILIA_ID')();
  TextColumn get subfamiliaId => text().named('SUBFAMILIA_ID')();
  IntColumn get cantidadDesde => integer().named('CANTIDAD_DESDE')();
  RealColumn get descuento => real().named('DESCUENTO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey =>
      {descuentoGeneralId, articuloId, familiaId, subfamiliaId};

  @override
  String get tableName => 'DESCUENTO_GENERAL';
}
