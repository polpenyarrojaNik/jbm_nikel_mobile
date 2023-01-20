import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';

import '../../../core/infrastructure/remote_database.dart';
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
    @JsonKey(name: 'LINEA') required int linea,
    @JsonKey(name: 'CANTIDAD') required int cantidad,
    @JsonKey(name: 'FECHA') required DateTime fecha,
    @JsonKey(name: 'PRECIO_DIVISA') required double precioDivisa,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'TIPO_PRECIO') required int tipoPrecio,
    @JsonKey(name: 'DESCUENTO1') required double descuento1,
    @JsonKey(name: 'DESCUENTO2') required double descuento2,
    @JsonKey(name: 'DESCUENTO3') required double descuento3,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _EstadisticasUltimosPreciosDTO;

  factory EstadisticasUltimosPreciosDTO.fromJson(Map<String, dynamic> json) =>
      _$EstadisticasUltimosPreciosDTOFromJson(json);

  EstadisticasUltimosPrecios toDomain({
    String? nombreCliente,
    String? descripcion,
  }) {
    return EstadisticasUltimosPrecios(
      clienteId: clienteId,
      nombreCliente: nombreCliente,
      articuloId: articuloId,
      descripcion: descripcion,
      linea: linea,
      cantidad: cantidad,
      fecha: fecha,
      precioDivisa: precioDivisa.toMoney(currencyId: divisaId),
      divisaId: divisaId,
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
      linea: Value(linea),
      cantidad: Value(cantidad),
      fecha: Value(fecha),
      precioDivisa: Value(precioDivisa),
      divisaId: Value(divisaId),
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
        linea,
      };

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get articuloId => text().named('ARTICULO_ID')();
  IntColumn get linea => integer().named('LINEA')();
  IntColumn get cantidad => integer().named('CANTIDAD')();
  DateTimeColumn get fecha => dateTime().named('FECHA')();
  RealColumn get precioDivisa => real().named('PRECIO_DIVISA')();
  IntColumn get tipoPrecio => integer().named('TIPO_PRECIO')();
  TextColumn get divisaId => text().named('DIVISA_ID')();
  RealColumn get descuento1 => real().named('DESCUENTO1')();
  RealColumn get descuento2 => real().named('DESCUENTO2')();
  RealColumn get descuento3 => real().named('DESCUENTO3')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
