import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/articulo_precio_tarifa.dart';

part 'articulo_precio_tarifa_dto.freezed.dart';
part 'articulo_precio_tarifa_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloPrecioTarifaDTO
    with _$ArticuloPrecioTarifaDTO
    implements Insertable<ArticuloPrecioTarifaDTO> {
  const ArticuloPrecioTarifaDTO._();
  const factory ArticuloPrecioTarifaDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'TARIFA_ID') required String tarifaId,
    @JsonKey(name: 'TARIFA_DESCRIPCION') required String tarifaDescripcion,
    @JsonKey(name: 'CANTIDAD_DESDE') required int cantidadDesde,
    @JsonKey(name: 'PRECIO') required double precio,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'TIPO_PRECIO') required int tipoPrecio,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticuloPrecioTarifaDTO;

  factory ArticuloPrecioTarifaDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloPrecioTarifaDTOFromJson(json);

  ArticuloPrecioTarifa toDomain() {
    return ArticuloPrecioTarifa(
      articuloId: articuloId,
      tarifaId: tarifaId,
      tarifaDescripcion: tarifaDescripcion,
      cantidadDesde: cantidadDesde,
      precio: precio.parseMoney(currencyId: divisaId),
      divisaId: divisaId,
      tipoPrecio: tipoPrecio,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticuloPrecioTarifaTableCompanion(
      articuloId: Value(articuloId),
      tarifaId: Value(tarifaId),
      tarifaDescripcion: Value(tarifaDescripcion),
      cantidadDesde: Value(cantidadDesde),
      precio: Value(precio),
      divisaId: Value(divisaId),
      tipoPrecio: Value(tipoPrecio),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticuloPrecioTarifaDTO)
class ArticuloPrecioTarifaTable extends Table {
  @override
  String get tableName => 'ARTICULOS_TARIFA_PRECIO';

  @override
  Set<Column> get primaryKey => {articuloId, tarifaId, cantidadDesde};

  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get tarifaId => text().named('TARIFA_ID')();
  TextColumn get tarifaDescripcion => text().named('TARIFA_DESCRIPCION')();
  IntColumn get cantidadDesde => integer().named('CANTIDAD_DESDE')();
  RealColumn get precio => real().named('PRECIO')();
  TextColumn get divisaId => text().named('DIVISA_ID')();
  IntColumn get tipoPrecio => integer().named('TIPO_PRECIO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
