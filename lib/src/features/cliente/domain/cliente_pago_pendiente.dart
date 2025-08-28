import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import 'metodo_cobro.dart';

part 'cliente_pago_pendiente.freezed.dart';

@freezed
abstract class ClientePagoPendiente with _$ClientePagoPendiente {
  const ClientePagoPendiente._();
  const factory ClientePagoPendiente({
    required String clienteId,
    required String efectoId,
    String? facutaId,
    DateTime? fechaFactura,
    DateTime? fechaExpiracion,
    MetodoDeCobro? metodoDeCobro,
    String? estadoCobroId,
    Money? importe,
    DateTime? fechaExpiracionInicial,
    bool? vencidoJBM,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _ClientePagoPendiente;
}
