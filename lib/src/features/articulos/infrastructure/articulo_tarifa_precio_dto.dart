import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/articulo_tarifa_precio.dart';

part 'articulo_tarifa_precio_dto.freezed.dart';
part 'articulo_tarifa_precio_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloTarifaPrecioDTO
    with _$ArticuloTarifaPrecioDTO
    implements Insertable<ArticuloTarifaPrecioDTO> {
  const ArticuloTarifaPrecioDTO._();
  const factory ArticuloTarifaPrecioDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'TARIFA_ID') required String tarifaId,
    @JsonKey(name: 'TARIFA_DESCRIPCION') String? tarifaDescripcion,
    @JsonKey(name: 'CANTIDAD_DESDE') required double cantidadDesDe,
    @JsonKey(name: 'PRECIO') required double precio,
    @JsonKey(name: 'TIPO_PRECIO') double? tipoPrecio,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ArticuloTarifaPrecioDTO;

  factory ArticuloTarifaPrecioDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloTarifaPrecioDTOFromJson(json);

  ArticuloTarifaPrecio toDomain() {
    return ArticuloTarifaPrecio(
      articuloId: articuloId,
      tarifaId: tarifaId,
      tarifaDescripcion: tarifaDescripcion,
      cantidadDesDe: cantidadDesDe,
      precio: precio,
      tipoPrecio: tipoPrecio,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ArticuloTarifaPrecioTableCompanion(
      articuloId: Value(articuloId),
      tarifaId: Value(tarifaId),
      tarifaDescripcion: Value(tarifaDescripcion),
      cantidadDesDe: Value(cantidadDesDe),
      precio: Value(precio),
      tipoPrecio: Value(tipoPrecio),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ArticuloTarifaPrecioDTO)
class ArticuloTarifaPrecioTable extends Table {
  @override
  String get tableName => 'ARTICULOS_TARIFA_PRECIO';

  @override
  Set<Column> get primaryKey => {articuloId, tarifaId, cantidadDesDe};

  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get tarifaId => text().named('TARIFA_ID')();
  TextColumn get tarifaDescripcion =>
      text().nullable().named('TARIFA_DESCRIPCION')();
  RealColumn get cantidadDesDe => real().named('CANTIDAD_DESDE')();
  RealColumn get precio => real().named('PRECIO')();
  RealColumn get tipoPrecio => real().nullable().named('TIPO_PRECIO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
