import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/pedido_venta_linea.dart';

part 'pedido_venta_linea_local_dto.freezed.dart';
part 'pedido_venta_linea_local_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class PedidoVentaLineaLocalDTO
    with _$PedidoVentaLineaLocalDTO
    implements Insertable<PedidoVentaLineaLocalDTO> {
  const PedidoVentaLineaLocalDTO._();
  const factory PedidoVentaLineaLocalDTO({
    @JsonKey(name: 'PEDIDO_APP_ID') required String pedidoVentaAppId,
    @JsonKey(name: 'LIN_APP_ID') required String pedidoVentaLineaAppId,
    @JsonKey(name: 'PRODUCTO_ID') required String articuloId,
    @JsonKey(name: 'DENOMINACION') String? articuloDescription,
    @JsonKey(name: 'CANTIDAD') required double cantidad,
    @JsonKey(name: 'PRECIO_DIVISA') required double precioDivisa,
    @JsonKey(name: 'TPRECIO') required double tipoPrecio,
    @JsonKey(name: 'DTO1') required double descuento1,
    @JsonKey(name: 'DTO2') required double descuento2,
    @JsonKey(name: 'DTO3') required double descuento3,
    @JsonKey(name: 'DTO_PP') required double descuentoProntoPago,
    @JsonKey(name: 'STOCK_DISPONIBLE_SN') required String stockDisponibleSN,
    @JsonKey(name: 'F_DISPONIBLE') DateTime? fechaDisponible,
    @JsonKey(name: 'IVA') required double iva,
  }) = _PedidoVentaLineaLocalDTO;

  factory PedidoVentaLineaLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$PedidoVentaLineaLocalDTOFromJson(json);

  factory PedidoVentaLineaLocalDTO.fromDomain(PedidoVentaLinea _) {
    return _PedidoVentaLineaLocalDTO(
      pedidoVentaAppId: _.pedidoVentaAppId!,
      pedidoVentaLineaAppId: _.pedidoVentaLineaAppId!,
      articuloId: _.articuloId,
      cantidad: _.cantidad,
      precioDivisa: _.precioDivisa.amount.toDecimal().toDouble(),
      tipoPrecio: _.tipoPrecio!,
      descuento1: _.descuento1,
      descuento2: _.descuento2,
      descuento3: _.descuento3,
      descuentoProntoPago: _.descuentoProntoPago!,
      stockDisponibleSN: (_.stockDisponibleSN ?? false) ? 'S' : 'N',
      iva: _.iva!,
    );
  }

  PedidoVentaLinea toDomain({required String divisaId, double? importeLinea}) {
    return PedidoVentaLinea(
        empresaId: null,
        pedidoVentaId: null,
        pedidoVentaLineaId: null,
        pedidoVentaAppId: pedidoVentaAppId,
        pedidoVentaLineaAppId: pedidoVentaLineaAppId,
        articuloId: articuloId,
        articuloDescription: articuloDescription,
        cantidad: cantidad,
        precioDivisa: precioDivisa.parseMoney(precioDivisa, divisaId),
        divisaId: divisaId,
        tipoPrecio: tipoPrecio,
        descuento1: descuento1,
        descuento2: descuento2,
        descuento3: descuento3,
        descuentoProntoPago: descuentoProntoPago,
        pedidoLineaIdComponente: null,
        importeLinea: importeLinea?.parseMoney(importeLinea, divisaId),
        stockDisponibleSN: (stockDisponibleSN == 'S') ? true : false,
        fechaDisponible: fechaDisponible,
        iva: iva,
        lastUpdated: DateTime.now(),
        deleted: false);
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PedidoVentaLineaLocalTableCompanion(
      pedidoVentaAppId: Value(pedidoVentaAppId),
      pedidoVentaLineaAppId: Value(pedidoVentaLineaAppId),
      articuloId: Value(articuloId),
      articuloDescription: Value(articuloDescription),
      cantidad: Value(cantidad),
      precioDivisa: Value(precioDivisa),
      tipoPrecio: Value(tipoPrecio),
      descuento1: Value(descuento1),
      descuento2: Value(descuento2),
      descuento3: Value(descuento3),
      descuentoProntoPago: Value(descuentoProntoPago),
      stockDisponibleSN: Value(stockDisponibleSN),
      fechaDisponible: Value(fechaDisponible),
      iva: Value(iva),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PedidoVentaLineaLocalDTO)
class PedidoVentaLineaLocalTable extends Table {
  TextColumn get pedidoVentaAppId => text().named('PEDIDO_APP_ID')();
  TextColumn get pedidoVentaLineaAppId => text().named('LIN_APP_ID')();
  TextColumn get articuloId => text().named('PRODUCTO_ID')();
  TextColumn get articuloDescription =>
      text().nullable().named('DENOMINACION')();
  RealColumn get cantidad => real().named('CANTIDAD')();
  RealColumn get precioDivisa => real().named('PRECIO_DIVISA')();
  RealColumn get tipoPrecio => real().named('TPRECIO')();
  RealColumn get descuento1 => real().named('DTO1')();
  RealColumn get descuento2 => real().named('DTO2')();
  RealColumn get descuento3 => real().named('DTO3')();
  RealColumn get descuentoProntoPago => real().named('DTO_PP')();
  TextColumn get stockDisponibleSN => text().named('STOCK_DISPONIBLE_SN')();
  DateTimeColumn get fechaDisponible =>
      dateTime().nullable().named('F_DISPONIBLE')();
  RealColumn get iva => real().named('IVA')();

  @override
  Set<Column> get primaryKey => {
        pedidoVentaAppId,
        pedidoVentaLineaAppId,
      };

  @override
  String get tableName => 'PEDIDOS_LINEAS_LOCAL_IMP';
}
