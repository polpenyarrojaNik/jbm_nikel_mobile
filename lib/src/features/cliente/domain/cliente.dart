import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/core/domain/divisa.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/plazo_cobro.dart';

import 'metodo_cobro.dart';

part 'cliente.freezed.dart';

@freezed
class Cliente with _$Cliente {
  const Cliente._();
  const factory Cliente(
      {required String id,
      String? nombreCliente,
      String? nif,
      String? nombreFiscal,
      String? direccionFiscal1,
      String? direccionFiscal2,
      String? codigoPostalFiscal,
      String? poblacionFiscal,
      String? provinciaFiscal,
      Pais? paisFiscal,
      double? latitudFiscal,
      double? longitudFiscal,
      required String empresaId,
      double? ivaEspecial,
      String? extentoIva,
      double? ventasAnyoActual,
      double? ventasAnyoAnterior,
      double? ventasHaceDosAnyos,
      double? margenAnyoActual,
      double? margenAnyoAnterior,
      double? margenHaceDosAnyos,
      double? porcentajeAbonos,
      double? porcentajeGarantias,
      String? centralCompras,
      String? urlWeb,
      Divisa? divisa,
      String? tarifaId,
      String? tarifaDescripcion,
      String? descuentoGeneral,
      String? descripcionDescuentoGeneral,
      required String tipoCalucloPrecio,
      PlazoDeCobro? plazoDeCobro,
      MetodoDeCobro? metodoDeCobro,
      required double descuentoProntoPago,
      required double riesgoConcedidoInterno,
      DateTime? riesgoConcedidoInternoDate,
      required double riesgoConcedidoCoafe,
      DateTime? riesgoConcedidoCoafeFecha,
      double? riesgoConcedido,
      double? riesgoPendienteCobroVencido,
      double? riesgoPendienteCobroNoVencido,
      double? riesgoPendienteServir,
      double? riesgoPendienteFacturar,
      String? obvservacionesInternas,
      required DateTime lastUpdated,
      required bool deleted}) = _Cliente;
}
