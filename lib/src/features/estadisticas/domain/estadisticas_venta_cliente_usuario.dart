import 'package:freezed_annotation/freezed_annotation.dart';

import '../../articulos/domain/articulo.dart';
import '../../cliente/domain/cliente.dart';

part 'estadisticas_venta_cliente_usuario.freezed.dart';

@freezed
class EstadisticasVentaClienteUsuario with _$EstadisticasVentaClienteUsuario {
  const EstadisticasVentaClienteUsuario._();
  const factory EstadisticasVentaClienteUsuario(
      {required double anyo,
      required double mes,
      required Cliente cliente,
      required Articulo articulo,
      double? unidades,
      double? importe,
      double? coste,
      required DateTime lastUpdated,
      required bool deleted}) = _EstadisticasVentaClienteUsuario;
}
