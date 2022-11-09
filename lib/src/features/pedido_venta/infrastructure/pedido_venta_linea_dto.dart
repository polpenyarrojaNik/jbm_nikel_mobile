import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/pedido_venta_linea.dart';

part 'pedido_venta_linea_dto.freezed.dart';
part 'pedido_venta_linea_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class PedidoVentaLineaDTO
    with _$PedidoVentaLineaDTO
    implements Insertable<PedidoVentaLineaDTO> {
  const PedidoVentaLineaDTO._();
  const factory PedidoVentaLineaDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PEDIDO_ID') required String pedidoVentaId,
    @JsonKey(name: 'PEDIDO_LINEA_ID') required String pedidoVentaLineaId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'ARTICULO_DESCRIPCION') required String articuloDescription,
    @JsonKey(name: 'CANTIDAD') required int cantidad,
    @JsonKey(name: 'PRECIO_DIVISA') required double precioDivisa,
    @JsonKey(name: 'TIPO_PRECIO') required int tipoPrecio,
    @JsonKey(name: 'DESCUENTO1') required double descuento1,
    @JsonKey(name: 'DESCUENTO2') required double descuento2,
    @JsonKey(name: 'DESCUENTO3') required double descuento3,
    @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
        String? pedidoLineaIdComponente,
    @JsonKey(name: 'TOTAL_LINEA') double? importeLinea,
    @JsonKey(name: 'CANTIDAD_SERVIDA') required int cantidadServida,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _PedidoVentaLineaDTO;

  factory PedidoVentaLineaDTO.fromJson(Map<String, dynamic> json) =>
      _$PedidoVentaLineaDTOFromJson(json);

  PedidoVentaLinea toDomain({required String divisaId}) {
    return PedidoVentaLinea(
        empresaId: empresaId,
        pedidoVentaId: pedidoVentaId,
        pedidoVentaLineaId: pedidoVentaLineaId,
        articuloId: articuloId,
        articuloDescription: articuloDescription,
        cantidad: cantidad,
        precioDivisa: precioDivisa.toMoney(currencyId: divisaId),
        divisaId: divisaId,
        tipoPrecio: tipoPrecio,
        descuento1: descuento1,
        descuento2: descuento2,
        descuento3: descuento3,
        pedidoLineaIdComponente: pedidoLineaIdComponente,
        importeLinea: (importeLinea != null)
            ? importeLinea!.toMoney(currencyId: divisaId)
            : null,
        cantidadPendiente: cantidad - cantidadServida,
        lastUpdated: lastUpdated,
        deleted: (deleted == 'S') ? true : false);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PedidoVentaLineaTableCompanion(
      empresaId: Value(empresaId),
      pedidoVentaId: Value(pedidoVentaId),
      pedidoVentaLineaId: Value(pedidoVentaLineaId),
      articuloId: Value(articuloId),
      articuloDescription: Value(articuloDescription),
      cantidad: Value(cantidad),
      precioDivisa: Value(precioDivisa),
      tipoPrecio: Value(tipoPrecio),
      descuento1: Value(descuento1),
      descuento2: Value(descuento2),
      descuento3: Value(descuento3),
      pedidoLineaIdComponente: Value(pedidoLineaIdComponente),
      importeLinea: Value(importeLinea),
      cantidadServida: Value(cantidadServida),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PedidoVentaLineaDTO)
class PedidoVentaLineaTable extends Table {
  TextColumn get empresaId => text().named('EMPRESA_ID')();
  TextColumn get pedidoVentaId => text().named('PEDIDO_ID')();
  TextColumn get pedidoVentaLineaId => text().named('PEDIDO_LINEA_ID')();
  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get articuloDescription => text().named('ARTICULO_DESCRIPCION')();
  IntColumn get cantidad => integer().named('CANTIDAD')();
  RealColumn get precioDivisa => real().named('PRECIO_DIVISA')();
  IntColumn get tipoPrecio => integer().named('TIPO_PRECIO')();
  RealColumn get descuento1 => real().named('DESCUENTO1')();
  RealColumn get descuento2 => real().named('DESCUENTO2')();
  RealColumn get descuento3 => real().named('DESCUENTO3')();
  TextColumn get pedidoLineaIdComponente =>
      text().nullable().named('PEDIDO_LINEA_ID_COMPONENTE')();
  RealColumn get importeLinea => real().nullable().named('TOTAL_LINEA')();
  IntColumn get cantidadServida => integer().named('CANTIDAD_SERVIDA')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey => {pedidoVentaId, empresaId, pedidoVentaLineaId};

  @override
  String get tableName => 'PEDIDOS_LINEAS';
}
