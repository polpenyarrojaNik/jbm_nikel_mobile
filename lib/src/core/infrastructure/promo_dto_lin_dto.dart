import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'remote_database.dart';

part 'promo_dto_lin_dto.freezed.dart';
part 'promo_dto_lin_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class PromoDtoLineaDTO
    with _$PromoDtoLineaDTO
    implements Insertable<PromoDtoLineaDTO> {
  const PromoDtoLineaDTO._();
  const factory PromoDtoLineaDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PROMO_DTO_ID') required String promoDtoId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'CANTIDAD_DESDE') required int cantidadDesde,
    @JsonKey(name: 'PRECIO') required double precio,
    @JsonKey(name: 'TIPO_PRECIO') required int? tipoPrecio,
    @JsonKey(name: 'DTO') required double dto,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _PromoDtoLineaDTO;

  factory PromoDtoLineaDTO.fromJson(Map<String, dynamic> json) =>
      _$PromoDtoLineaDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PromoDtoLinTableCompanion(
      empresaId: Value(empresaId),
      promoDtoId: Value(promoDtoId),
      articuloId: Value(articuloId),
      cantidadDesde: Value(cantidadDesde),
      precio: Value(precio),
      tipoPrecio: Value(tipoPrecio),
      dto: Value(dto),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PromoDtoLineaDTO)
class PromoDtoLinTable extends Table {
  @override
  String get tableName => 'promo_dto_lin';

  @override
  Set<Column> get primaryKey => {
    empresaId,
    promoDtoId,
    articuloId,
    cantidadDesde,
  };

  TextColumn get empresaId => text().named('empresa_id')();
  TextColumn get promoDtoId => text().named('promo_dto_id')();
  TextColumn get articuloId => text().named('articulo_id')();
  IntColumn get cantidadDesde => integer().named('cantidad_desde')();
  RealColumn get precio => real().named('precio')();
  IntColumn get tipoPrecio => integer().nullable().named('tipo_precio')();
  RealColumn get dto => real().named('dto')();

  DateTimeColumn get lastUpdated => dateTime().named('last_updated')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('deleted')();
}
