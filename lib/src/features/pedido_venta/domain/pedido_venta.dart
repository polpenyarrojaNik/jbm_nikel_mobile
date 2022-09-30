import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/core/domain/divisa.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta_estado.dart';
import 'package:money2/money2.dart';

part 'pedido_venta.freezed.dart';

@freezed
class PedidoVenta with _$PedidoVenta {
  const PedidoVenta._();
  const factory PedidoVenta({
    String? empresaId,
    String? pedidoVentaId,
    String? pedidoVentaAppId,
    String? usuarioId,
    required DateTime pedidoVentaDate,
    String? tipoVenta,
    String? clienteId,
    String? direccionId,
    String? nombreCliente,
    String? direccionEntrga1,
    String? direccionEntrga2,
    String? codigoPostal,
    String? poblacion,
    String? provincia,
    Pais? pais,
    required Divisa divisa,
    String? pedidoCliente,
    String? observaciones,
    Money? baseImponible,
    Money? importeIva,
    Money? total,
    PedidoVentaEstado? pedidoVentaEstado,
    bool? oferta,
    double? descuentoProntoPago,
    double? dtoBonificacion,
    required double iva,
    required DateTime lastUpdated,
    required bool deleted,
    required bool enviada,
    required bool tratada,
  }) = _PedidoVenta;
}
