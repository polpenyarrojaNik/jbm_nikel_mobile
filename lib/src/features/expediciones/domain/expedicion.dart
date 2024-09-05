import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/divisa.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/features/pedido_venta/domain/pedido_venta_estado.dart';
import 'package:jbm_nikel_mobile/src/features/expediciones/domain/tracking_estado.dart';
import 'package:money2/money2.dart';

part 'expedicion.freezed.dart';

@freezed
class Expedicion with _$Expedicion {
  const Expedicion._();
  const factory Expedicion({
    String? empresaId,
    String? pedidoVentaId,
    String? usuarioId,
    required DateTime pedidoVentaDate,
    String? clienteId,
    String? direccionId,
    required String nombreCliente,
    String? codigoPostal,
    String? poblacion,
    String? provincia,
    Pais? pais,
    required Divisa divisa,
    Money? baseImponible,
    PedidoVentaEstado? pedidoVentaEstado,
    bool? oferta,
    String? pedidoAppId,
    required int numLineas,
    required TrackingEstado trackingEstado,
    required String albaranId,
    required String? trackId,
    String? agencia,
    required DateTime fechaAlbaran,
    required bool enviada,
    required bool tratada,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _Expedicion;

  bool get isEditable => (pedidoVentaEstado?.id == 4);

  bool get isLocal => pedidoVentaId == null && empresaId == null;
}
