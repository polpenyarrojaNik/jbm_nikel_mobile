import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'pedido_venta_linea.freezed.dart';

@freezed
abstract class PedidoVentaLinea with _$PedidoVentaLinea {
  const PedidoVentaLinea._();
  const factory PedidoVentaLinea({
    String? empresaId,
    String? pedidoId,
    String? pedidoVentaLineaId,
    String? pedidoVentaAppId,
    // String? pedidoVentaLineaAppId,
    required String articuloId,
    required String articuloDescription,
    required int cantidad,
    required Money precioDivisa,
    required String divisaId,
    required int tipoPrecio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    double? descuentoProntoPago,
    String? pedidoLineaIdComponente,
    Money? importeLinea,
    bool? stockDisponibleSN,
    int? stockDisponible,
    DateTime? fechaDisponible,
    DateTime? fechaCliente,
    double? iva,
    required bool aiRecomendado,
    required int cantidadPendiente,
    required DateTime lastUpdated,
    required String? codPromo,
    required int? cantidadPromo,
    required bool? isPromo,
    required bool deleted,
  }) = _PedidoVentaLinea;

  bool get isComponente => pedidoLineaIdComponente != null;

  bool? get sinStock =>
      stockDisponibleSN == null ? null : stockDisponibleSN == false;

  bool get isEditable => !isComponente && cantidadPendiente > 0;
}

/// Asigna LIN_APP_ID por posición (001, 002, ...) y actualiza las referencias
/// de los componentes a la línea de la que cuelgan.
List<PedidoVentaLinea> renumerarPedidoVentaLineas(
  List<PedidoVentaLinea> lineas,
) {
  String nuevoId(int i) => (i + 1).toString().padLeft(3, '0');

  final nuevosIds = <String, String>{
    for (var i = 0; i < lineas.length; i++)
      if (lineas[i].pedidoVentaLineaId != null)
        lineas[i].pedidoVentaLineaId!: nuevoId(i),
  };

  return [
    for (var i = 0; i < lineas.length; i++)
      lineas[i].copyWith(
        pedidoVentaLineaId: nuevoId(i),
        pedidoLineaIdComponente:
            nuevosIds[lineas[i].pedidoLineaIdComponente] ??
            lineas[i].pedidoLineaIdComponente,
      ),
  ];
}
