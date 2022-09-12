import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../../articulos/domain/articulo.dart';
import '../domain/estadisticas_ultimos_precios.dart';

part 'estadisticas_ultimos_precios_dto.freezed.dart';
part 'estadisticas_ultimos_precios_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class EstadisticasUltimosPreciosDTO
    with _$EstadisticasUltimosPreciosDTO
    implements Insertable<EstadisticasUltimosPreciosDTO> {
  const EstadisticasUltimosPreciosDTO._();
  const factory EstadisticasUltimosPreciosDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'FECHA') required DateTime fecha,
    @JsonKey(name: 'PRECIO_DIVISA') required double precioDivisa,
    @JsonKey(name: 'TIPO_PRECIO') required double tipoPrecio,
    @JsonKey(name: 'DESCUENTO1') required double descuento1,
    @JsonKey(name: 'DESCUENTO2') required double descuento2,
    @JsonKey(name: 'DESCUENTO3') required double descuento3,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _EstadisticasUltimosPreciosDTO;

  factory EstadisticasUltimosPreciosDTO.fromJson(Map<String, dynamic> json) =>
      _$EstadisticasUltimosPreciosDTOFromJson(json);

  EstadisticasUltimosPrecios toDomain({required Articulo articulo}) {
    return EstadisticasUltimosPrecios(
      clienteId: clienteId,
      articulo: articulo,
      fecha: fecha,
      precioDivisa: precioDivisa,
      tipoPrecio: tipoPrecio,
      descuento1: descuento1,
      descuento2: descuento2,
      descuento3: descuento3,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return EstadisticasUltimosPreciosTableCompanion(
      clienteId: Value(clienteId),
      articuloId: Value(articuloId),
      fecha: Value(fecha),
      precioDivisa: Value(precioDivisa),
      tipoPrecio: Value(tipoPrecio),
      descuento1: Value(descuento1),
      descuento2: Value(descuento2),
      descuento3: Value(descuento3),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(EstadisticasUltimosPreciosDTO)
class EstadisticasUltimosPreciosTable extends Table {
  @override
  String get tableName => 'ULTIMOS_PRECIOS';

  @override
  Set<Column> get primaryKey => {
        clienteId,
        articuloId,
        fecha,
        precioDivisa,
        tipoPrecio,
        descuento1,
        descuento2,
        descuento3
      };

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get articuloId => text().named('ARTICULO_ID')();
  DateTimeColumn get fecha => dateTime().named('FECHA')();
  RealColumn get precioDivisa => real().named('PRECIO_DIVISA')();
  RealColumn get tipoPrecio => real().named('TIPO_PRECIO')();
  RealColumn get descuento1 => real().named('DESCUENTO1')();
  RealColumn get descuento2 => real().named('DESCUENTO2')();
  RealColumn get descuento3 => real().named('DESCUENTO3')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
