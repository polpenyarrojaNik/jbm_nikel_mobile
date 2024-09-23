import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/helpers/extension.dart';
import '../domain/expedicion.dart';

import '../../../core/domain/divisa.dart';
import '../../../core/domain/pais.dart';
import '../../pedido_venta/domain/pedido_venta_estado.dart';
import '../domain/tracking_estado.dart';

part 'expedicion_dto.freezed.dart';
part 'expedicion_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class ExpedicionDTO with _$ExpedicionDTO {
  const ExpedicionDTO._();
  const factory ExpedicionDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PEDIDO_ID') required String pedidoVentaId,
    @JsonKey(name: 'FECHA_PEDIDO') required DateTime pedidoVentaDate,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'DIRECCION_ID') String? direccionId,
    @JsonKey(name: 'NOMRE_CLIENTE') required String nombreCliente,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE') required double baseImponible,
    @JsonKey(name: 'ESTADO_PEDIDO_ID') required int pedidoVentaEstadoId,
    @JsonKey(name: 'TRACKING_ESTADO') required String estadoTrackingId,
    @JsonKey(name: 'TRACK_ID') String? trackId,
    @JsonKey(name: 'OFERTA_SN') required String oferta,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _ExpedicionDTO;

  factory ExpedicionDTO.fromJson(Map<String, dynamic> json) =>
      _$ExpedicionDTOFromJson(json);

  Expedicion toDomain({
    required Pais? pais,
    required Divisa divisa,
    required PedidoVentaEstado pedidoVentaEstado,
    required TrackingEstado trackingEstado,
  }) {
    return Expedicion(
      empresaId: empresaId,
      pedidoVentaId: pedidoVentaId,
      pedidoVentaDate: pedidoVentaDate,
      clienteId: clienteId,
      nombreCliente: nombreCliente,
      direccionId: direccionId,
      codigoPostal: codigoPostal,
      poblacion: poblacion,
      provincia: provincia,
      pais: pais,
      divisa: divisa,
      baseImponible: baseImponible.toMoney(currencyId: divisaId),
      pedidoVentaEstado: pedidoVentaEstado,
      oferta: (oferta == 'S') ? true : false,
      trackingEstado: trackingEstado,
      trackId: trackId,
      enviada: true,
      tratada: true,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }
}
