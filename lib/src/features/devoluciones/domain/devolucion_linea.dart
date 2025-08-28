import 'package:freezed_annotation/freezed_annotation.dart';

import 'devolucion_estado.dart';
import 'devolucion_motivo.dart';

part 'devolucion_linea.freezed.dart';

@freezed
abstract class DevolucionLinea with _$DevolucionLinea {
  const DevolucionLinea._();
  const factory DevolucionLinea({
    required String empresaId,
    required String devolucionId,
    required String articuloId,
    required String articuloDescription,
    double? cantidadDevolucion,
    double? cantidadRecibida,
    DevolucionMotivo? devolucionMotivo,
    DevolucionEstado? devolucionEstado,
    String? observaciones,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _DevolucionLinea;
}
