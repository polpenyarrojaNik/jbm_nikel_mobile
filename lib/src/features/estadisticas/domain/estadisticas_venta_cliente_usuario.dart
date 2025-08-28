import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'estadisticas_venta_cliente_usuario.freezed.dart';

@freezed
abstract class EstadisticasVentaClienteUsuario
    with _$EstadisticasVentaClienteUsuario {
  const EstadisticasVentaClienteUsuario._();
  const factory EstadisticasVentaClienteUsuario({
    required double anyo,
    required double mes,
    required String clienteId,
    required String articuloId,
    double? unidades,
    Money? importe,
    Money? coste,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _EstadisticasVentaClienteUsuario;
}
