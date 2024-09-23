import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../domain/articulo_empresa_iva.dart';

import '../../../core/infrastructure/remote_database.dart';

part 'articulo_empresa_iva_dto.freezed.dart';
part 'articulo_empresa_iva_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloEmpresaIvaDTO
    with _$ArticuloEmpresaIvaDTO
    implements Insertable<ArticuloEmpresaIvaDTO> {
  const ArticuloEmpresaIvaDTO._();
  const factory ArticuloEmpresaIvaDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'IVA') required double iva,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticuloEmpresaIvaDTO;

  factory ArticuloEmpresaIvaDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloEmpresaIvaDTOFromJson(json);

  ArticuloEmpresaIva toDomain() {
    return ArticuloEmpresaIva(
      articuloId: articuloId,
      empresaId: empresaId,
      iva: iva,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticuloEmpresaIvaTableCompanion(
      articuloId: Value(articuloId),
      empresaId: Value(empresaId),
      iva: Value(iva),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticuloEmpresaIvaDTO)
class ArticuloEmpresaIvaTable extends Table {
  @override
  String get tableName => 'ARTICULOS_EMPRESAS_IVA';

  @override
  Set<Column> get primaryKey => {articuloId, empresaId};

  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get empresaId => text().named('EMPRESA_ID')();
  RealColumn get iva => real().named('IVA')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
