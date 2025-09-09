import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/helpers/extension.dart';
import '../../../core/infrastructure/local_database.dart';
import '../domain/pedido_venta_linea.dart';

part 'pedido_venta_linea_local_dto.freezed.dart';
part 'pedido_venta_linea_local_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
abstract class PedidoVentaLineaLocalDTO
    with _$PedidoVentaLineaLocalDTO
    implements Insertable<PedidoVentaLineaLocalDTO> {
  const PedidoVentaLineaLocalDTO._();
  const factory PedidoVentaLineaLocalDTO({
    @JsonKey(name: 'PEDIDO_APP_ID') required String pedidoVentaAppId,
    @JsonKey(name: 'EMPRESA_ID') String? empresaId,
    @JsonKey(name: 'PEDIDO_ID') String? pedidoId,
    @JsonKey(name: 'LIN_APP_ID') required String pedidoVentaLineaAppId,
    @JsonKey(name: 'PRODUCTO_ID') required String articuloId,
    @JsonKey(name: 'DENOMINACION') required String articuloDescription,
    @JsonKey(name: 'CANTIDAD') required int cantidad,
    @JsonKey(name: 'PRECIO_DIVISA') required double precioDivisa,
    @JsonKey(name: 'TPRECIO') required int tipoPrecio,
    @JsonKey(name: 'DTO1') required double descuento1,
    @JsonKey(name: 'DTO2') required double descuento2,
    @JsonKey(name: 'DTO3') required double descuento3,
    @JsonKey(name: 'DTO_PP') required double descuentoProntoPago,
    @JsonKey(name: 'STOCK_DISPONIBLE_SN') required String stockDisponibleSN,
    @JsonKey(name: 'F_DISPONIBLE') DateTime? fechaDisponible,
    @JsonKey(name: 'IVA') required double iva,
    @JsonKey(name: 'PEDIDO_LINEA_ID_COMPONENTE')
    String? pedidoLineaComponenteId,
  }) = _PedidoVentaLineaLocalDTO;

  factory PedidoVentaLineaLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$PedidoVentaLineaLocalDTOFromJson(json);

  factory PedidoVentaLineaLocalDTO.fromDomain(
    PedidoVentaLinea pedidoVentaLinea,
  ) {
    return _PedidoVentaLineaLocalDTO(
      pedidoVentaAppId: pedidoVentaLinea.pedidoVentaAppId!,
      pedidoId: pedidoVentaLinea.pedidoId,
      empresaId: pedidoVentaLinea.empresaId,
      pedidoVentaLineaAppId: pedidoVentaLinea.pedidoVentaLineaId!,
      articuloId: pedidoVentaLinea.articuloId,
      articuloDescription: pedidoVentaLinea.articuloDescription,
      cantidad: pedidoVentaLinea.cantidad,
      precioDivisa: pedidoVentaLinea.precioDivisa.amount.toDecimal().toDouble(),
      tipoPrecio: pedidoVentaLinea.tipoPrecio,
      descuento1: pedidoVentaLinea.descuento1,
      descuento2: pedidoVentaLinea.descuento2,
      descuento3: pedidoVentaLinea.descuento3,
      descuentoProntoPago: pedidoVentaLinea.descuentoProntoPago!,
      stockDisponibleSN: (pedidoVentaLinea.stockDisponibleSN ?? false)
          ? 'S'
          : 'N',
      iva: pedidoVentaLinea.iva!,
      pedidoLineaComponenteId: pedidoVentaLinea.pedidoLineaIdComponente,
    );
  }

  PedidoVentaLinea toDomain({required String divisaId, Money? importeLinea}) {
    return PedidoVentaLinea(
      empresaId: empresaId,
      pedidoId: pedidoId,
      pedidoVentaAppId: pedidoVentaAppId,
      pedidoVentaLineaId: pedidoVentaLineaAppId,
      articuloId: articuloId,
      articuloDescription: articuloDescription,
      cantidad: cantidad,
      precioDivisa: precioDivisa.toMoney(currencyId: divisaId),
      divisaId: divisaId,
      tipoPrecio: tipoPrecio,
      descuento1: descuento1,
      descuento2: descuento2,
      descuento3: descuento3,
      descuentoProntoPago: descuentoProntoPago,
      pedidoLineaIdComponente: pedidoLineaComponenteId,
      importeLinea: importeLinea,
      stockDisponibleSN: (stockDisponibleSN == 'S'),
      fechaDisponible: fechaDisponible,
      iva: iva,
      cantidadPendiente: cantidad,
      lastUpdated: DateTime.now().toUtc(),
      deleted: false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PedidoVentaLineaLocalTableCompanion(
      pedidoVentaAppId: Value(pedidoVentaAppId),
      pedidoId: Value(pedidoId),
      empresaId: Value(empresaId),
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
      pedidoLineaIdComponente: Value(pedidoLineaComponenteId),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PedidoVentaLineaLocalDTO)
class PedidoVentaLineaLocalTable extends Table {
  TextColumn get pedidoVentaAppId => text().named('PEDIDO_APP_ID')();
  TextColumn get pedidoId => text().nullable().named('PEDIDO_ID')();
  TextColumn get empresaId => text().nullable().named('EMPRESA_ID')();
  TextColumn get pedidoVentaLineaAppId => text().named('LIN_APP_ID')();
  TextColumn get articuloId => text().named('PRODUCTO_ID')();
  TextColumn get articuloDescription => text().named('DENOMINACION')();
  IntColumn get cantidad => integer().named('CANTIDAD')();
  RealColumn get precioDivisa => real().named('PRECIO_DIVISA')();
  IntColumn get tipoPrecio => integer().named('TPRECIO')();
  RealColumn get descuento1 => real().named('DTO1')();
  RealColumn get descuento2 => real().named('DTO2')();
  RealColumn get descuento3 => real().named('DTO3')();
  RealColumn get descuentoProntoPago => real().named('DTO_PP')();
  TextColumn get stockDisponibleSN => text().named('STOCK_DISPONIBLE_SN')();
  DateTimeColumn get fechaDisponible =>
      dateTime().nullable().named('F_DISPONIBLE')();
  RealColumn get iva => real().named('IVA')();
  TextColumn get pedidoLineaIdComponente =>
      text().nullable().named('PEDIDO_LINEA_ID_COMPONENTE')();
  @override
  Set<Column> get primaryKey => {pedidoVentaAppId, pedidoVentaLineaAppId};

  @override
  String get tableName => 'PEDIDOS_LINEAS_LOCAL_IMP';
}
