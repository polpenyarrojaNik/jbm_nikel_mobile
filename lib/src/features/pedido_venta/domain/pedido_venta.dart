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
    required String empresaId,
    required String pedidoVentaId,
    required DateTime pedidoVentaDate,
    required String tipoVenta,
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
    Money? baseImponible,
    Money? importeIva,
    Money? total,
    required PedidoVentaEstado pedidoVentaEstado,
    required bool oferta,
    required double descuentoProntoPago,
    required double iva,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _PedidoVenta;
}
