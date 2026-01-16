import 'package:freezed_annotation/freezed_annotation.dart';

import 'pedido_import_linea.dart';

part 'pedido_import_result.freezed.dart';

@freezed
abstract class PedidoImportResult with _$PedidoImportResult {
  const PedidoImportResult._();
  const factory PedidoImportResult({
    required String sheetName,
    required List<PedidoImportLinea> pedidoImportLineas,
    required List<PedidoImportLineaError> pedidoImportLineaErrors,
  }) = _PedidoImportResult;
}
