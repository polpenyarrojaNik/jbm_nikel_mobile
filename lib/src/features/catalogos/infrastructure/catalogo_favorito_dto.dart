import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';

part 'catalogo_favorito_dto.freezed.dart';
part 'catalogo_favorito_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CatalogoFavoritoDTO
    with _$CatalogoFavoritoDTO
    implements Insertable<CatalogoFavoritoDTO> {
  const CatalogoFavoritoDTO._();
  const factory CatalogoFavoritoDTO({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'CATALOGO_ID') required int catalogoId,
  }) = _CatalogoFavoritoDTO;

  factory CatalogoFavoritoDTO.fromJson(Map<String, dynamic> json) =>
      _$CatalogoFavoritoDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CatalogoFavoritoTableCompanion(
      id: Value(id),
      catalogoId: Value(catalogoId),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CatalogoFavoritoDTO)
class CatalogoFavoritoTable extends Table {
  @override
  String get tableName => 'CATALOGO_FAVORITO';

  @override
  Set<Column> get primaryKey => {id};

  IntColumn get id => integer().autoIncrement().named('ID')();
  IntColumn get catalogoId => integer().named('CATALOGO_ID')();
}
