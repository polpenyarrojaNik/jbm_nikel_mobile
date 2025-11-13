import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/domain/pais.dart';
import '../../cliente/domain/cliente.dart';

part 'cliente_alrededor.freezed.dart';

@freezed
abstract class ClienteAlrededor with _$ClienteAlrededor {
  const ClienteAlrededor._();
  const factory ClienteAlrededor({
    required String clienteId,
    required String markerId,
    required String nombre,
    required bool isDireccionFiscal,
    String? direccion,
    String? codigoPostal,
    String? poblacion,
    String? provincia,
    Pais? pais,
    bool? isClientePotencial,
    required double latitud,
    required double longitud,
    required Money ventasAnyoActual,
    required Money ventasAnyoAnterior,
    required double porcentajeAbonos,
    String? nombreRepresentante1,
    String? nombreRepresentante2,
    double? ventasPeriodoActual,
    double? ventasPeriodoAnterior,
  }) = _ClienteAlrededor;

  TendenciaCliente get tendenciaVentas {
    if (ventasAnyoActual > ventasAnyoAnterior) {
      return TendenciaCliente.up;
    } else if (ventasAnyoActual < ventasAnyoAnterior) {
      return TendenciaCliente.down;
    }
    return TendenciaCliente.equal;
  }
}
