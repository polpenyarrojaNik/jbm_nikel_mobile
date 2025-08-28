import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/domain/divisa.dart';
import '../../../core/domain/pais.dart';
import '../../../core/domain/sector.dart';
import '../../../core/domain/subsector.dart';
import 'cliente_estado_potencial.dart';
import 'cliente_tipo_potencial.dart';
import 'metodo_cobro.dart';
import 'plazo_cobro.dart';

part 'cliente.freezed.dart';

@freezed
abstract class Cliente with _$Cliente {
  const Cliente._();
  const factory Cliente({
    required String id,
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
    String? direccionPredeterminada1,
    String? direccionPredeterminada2,
    String? codigoPostalPredeterminada,
    String? poblacionPredeterminada,
    String? provinciaPredeterminada,
    Pais? paisPredeterminada,
    double? latitudPredeterminada,
    double? longitudPredeterminada,
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
    String? representante1Id,
    String? representante1Nombre,
    String? representante2Id,
    String? representante2Nombre,
    String? telefonoMovil,
    String? telefonoFijo,
    String? email,
    Sector? sector,
    Subsector? subsector,
    int? franqPortes1,
    int? franqPortes2,
    int? franqPortes3,
    double? importePortes1,
    double? importePortes2,
    double? importePortes3,
    DateTime? lastUpdated,
    required bool deleted,
  }) = _Cliente;

  bool isActivo() {
    return (ventasAnyoActual + ventasAnyoAnterior) !=
        Money.parse('0', isoCode: divisa!.id);
  }
}
