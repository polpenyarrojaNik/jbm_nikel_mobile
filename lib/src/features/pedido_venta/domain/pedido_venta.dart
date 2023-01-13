import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/divisa.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta_estado.dart';
import 'package:money2/money2.dart';

part 'pedido_venta.freezed.dart';

@freezed
class PedidoVenta with _$PedidoVenta {
  const PedidoVenta._();
  const factory PedidoVenta({
    required String empresaId,
    String? pedidoVentaId,
    String? pedidoVentaAppId,
    String? usuarioId,
    required DateTime pedidoVentaDate,
    String? tipoVenta,
    String? clienteId,
    String? direccionId,
    required String nombreCliente,
    String? direccionEntrga1,
    String? direccionEntrga2,
    String? codigoPostal,
    String? poblacion,
    String? provincia,
    Pais? pais,
    required Divisa divisa,
    String? pedidoCliente,
    String? observaciones,
    Money? totalLineas,
    Money? baseImponible,
    Money? importePortes,
    Money? importeIva,
    Money? total,
    PedidoVentaEstado? pedidoVentaEstado,
    bool? oferta,
    DateTime? ofertaFechaHasta,
    double? dtoBonificacion,
    String? pedidoAppId,
    required double iva,
    required DateTime lastUpdated,
    required bool deleted,
    required bool enviada,
    required bool tratada,
    required bool borrador,
    String? errorSyncMessage,
  }) = _PedidoVenta;

  bool getIsLocal() => !tratada;

  bool isEditable() => (!borrador && !tratada && !enviada);
}
