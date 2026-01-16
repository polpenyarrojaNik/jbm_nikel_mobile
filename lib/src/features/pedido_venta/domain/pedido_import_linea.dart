import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'pedido_import_linea.freezed.dart';

@freezed
abstract class PedidoImportLinea with _$PedidoImportLinea {
  const PedidoImportLinea._();
  const factory PedidoImportLinea({
    required int lineNumber,
    required String articuloId,
    required String articuloDescription,
    required int cantidad,
    required Money precioDivisa,
    required String divisaId,
    required int tipoPrecio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    required Money? importeLinea,
    required int? stockDisponible,
    double? iva,
  }) = _PedidoImportLinea;
}

@freezed
abstract class PedidoImportLineaError with _$PedidoImportLineaError {
  const PedidoImportLineaError._();
  const factory PedidoImportLineaError({
    required int lineNumber,
    required String errorMessage,
  }) = _PedidoImportLineaError;
}
