import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/divisa.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/plazo_cobro.dart';
import 'package:money2/money2.dart';

import 'cliente_estado_potencial.dart';
import 'cliente_tipo_potencial.dart';
import 'metodo_cobro.dart';

part 'cliente.freezed.dart';

@freezed
class Cliente with _$Cliente {
  const Cliente._();
  const factory Cliente(
      {required String id,
      required String nombreCliente,
      required String nombreFiscal,
      String? nif,
      String? direccionFiscal1,
      String? direccionFiscal2,
      String? codigoPostalFiscal,
      String? poblacionFiscal,
      String? provinciaFiscal,
      Pais? paisFiscal,
      required double latitudFiscal,
      required double longitudFiscal,
      required String empresaId,
      required double iva,
      required Money ventasAnyoActual,
      required Money ventasAnyoAnterior,
      required Money ventasHaceDosAnyos,
      required double margenAnyoActual,
      required double margenAnyoAnterior,
      required double margenHaceDosAnyos,
      required double porcentajeAbonos,
      required double porcentajeGarantias,
      String? centralCompras,
      String? urlWeb,
      Divisa? divisa,
      String? tarifaId,
      String? tarifaDescripcion,
      String? descuentoGeneralId,
      String? descripcionDescuentoGeneral,
      required String tipoCalculoPrecio,
      PlazoDeCobro? plazoDeCobro,
      MetodoDeCobro? metodoDeCobro,
      required double descuentoProntoPago,
      required Money riesgoConcedidoInterno,
      DateTime? riesgoConcedidoInternoDate,
      required Money riesgoConcedidoCoafe,
      DateTime? riesgoConcedidoCoafeFecha,
      required Money riesgoActual,
      Money? riesgoConcedido,
      Money? riesgoPendienteCobroVencido,
      Money? riesgoPendienteCobroNoVencido,
      Money? riesgoPendienteServir,
      Money? riesgoPendienteFacturar,
      required Money riesgoExcedido,
      String? obvservacionesInternas,
      bool? clientePotencial,
      ClienteEstadoPotencial? clienteEstadoPotencial,
      ClienteTipoPotencial? clienteTipoPotencial,
      DateTime? lastUpdated,
      required bool deleted}) = _Cliente;

  bool isActivo() {
    return (ventasAnyoActual + ventasAnyoAnterior) !=
        Money.parse('0', code: divisa!.id);
  }
}
