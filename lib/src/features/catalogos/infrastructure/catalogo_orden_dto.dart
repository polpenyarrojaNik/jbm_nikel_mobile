import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/local_database.dart';

// ignore_for_file: invalid_annotation_target

part 'catalogo_orden_dto.freezed.dart';
part 'catalogo_orden_dto.g.dart';

@freezed
class CatalogoOrdenDTO
    with _$CatalogoOrdenDTO
    implements Insertable<CatalogoOrdenDTO> {
  const CatalogoOrdenDTO._();
  const factory CatalogoOrdenDTO({
    @JsonKey(name: 'CATALOGO_ID') required int catalogoId,
    @JsonKey(name: 'FECHA_ABIERTO') required DateTime fechaAbierto,
  }) = _CatalogoOrdenDTO;

  factory CatalogoOrdenDTO.fromJson(Map<String, dynamic> json) =>
      _$CatalogoOrdenDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CatalogoOrdenTableCompanion(
      catalogoId: Value(catalogoId),
      fechaAbierto: Value(fechaAbierto),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CatalogoOrdenDTO)
class CatalogoOrdenTable extends Table {
  @override
  String get tableName => 'CATALOGO_ORDEN';

  @override
  Set<Column> get primaryKey => {catalogoId};

  IntColumn get catalogoId => integer().named('CATALOGO_ID')();
  DateTimeColumn get fechaAbierto => dateTime().named('FECHA_ABIERTO')();
}
