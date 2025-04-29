import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/helpers/extension.dart';

import '../../pedido_venta/infrastructure/pedido_venta_linea_dto.dart';
import '../domain/articulo_pedido_venta_linea.dart';

part 'articulo_pedido_venta_linea_dto.freezed.dart';
part 'articulo_pedido_venta_linea_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class ArticuloPedidoVentaLineaDTO with _$ArticuloPedidoVentaLineaDTO {
  const ArticuloPedidoVentaLineaDTO._();
  const factory ArticuloPedidoVentaLineaDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'PEDIDO_ID') required String pedidoVentaId,
    @JsonKey(name: 'PEDIDO_LINEA_ID') required String id,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'ARTICULO_DESCRIPCION') required String articuloDescription,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'NOMRE_CLIENTE') required String nombreCliente,
    @JsonKey(name: 'CANTIDAD') required int cantidad,
    @JsonKey(name: 'PRECIO_DIVISA') required double precioDivisa,
    @JsonKey(name: 'TIPO_PRECIO') required int tipoPrecio,
    @JsonKey(name: 'DESCUENTO1') required double descuento1,
    @JsonKey(name: 'DESCUENTO2') required double descuento2,
    @JsonKey(name: 'DESCUENTO3') required double descuento3,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _ArticuloPedidoVentaLineaDTO;

  factory ArticuloPedidoVentaLineaDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloPedidoVentaLineaDTOFromJson(json);

  ArticuloPedidoVentaLinea toDomain({
    required String divisaId,
    required DateTime fechaPedido,
  }) {
    return ArticuloPedidoVentaLinea(
      empresaId: empresaId,
      pedidoVentaId: pedidoVentaId,
      id: id,
      articuloId: articuloId,
      articuloDescription: articuloDescription,
      clienteId: clienteId,
      nombreCliente: nombreCliente,
      cantidad: cantidad,
      precioDivisa: precioDivisa.toMoney(currencyId: divisaId),
      divisaId: divisaId,
      tipoPrecio: tipoPrecio,
      descuento1: descuento1,
      descuento2: descuento2,
      descuento3: descuento3,
      fechaPedido: fechaPedido,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  factory ArticuloPedidoVentaLineaDTO.fromDB({
    required PedidoVentaLineaDTO pedidoVentaLineaDto,
    required String clienteId,
    required String nombreCliente,
  }) {
    return ArticuloPedidoVentaLineaDTO(
      empresaId: pedidoVentaLineaDto.empresaId,
      pedidoVentaId: pedidoVentaLineaDto.pedidoId,
      id: pedidoVentaLineaDto.pedidoVentaLineaId,
      articuloId: pedidoVentaLineaDto.articuloId,
      articuloDescription: pedidoVentaLineaDto.articuloDescription,
      clienteId: clienteId,
      nombreCliente: nombreCliente,
      cantidad: pedidoVentaLineaDto.cantidad,
      precioDivisa: pedidoVentaLineaDto.precioDivisa,
      tipoPrecio: pedidoVentaLineaDto.tipoPrecio,
      descuento1: pedidoVentaLineaDto.descuento1,
      descuento2: pedidoVentaLineaDto.descuento2,
      descuento3: pedidoVentaLineaDto.descuento3,
      lastUpdated: pedidoVentaLineaDto.lastUpdated,
      deleted: pedidoVentaLineaDto.deleted,
    );
  }
}
