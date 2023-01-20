import 'package:freezed_annotation/freezed_annotation.dart';

import '../../features/pedido_venta/domain/pedido_venta_linea.dart';

part 'entity_id_is_local_param.freezed.dart';

@freezed
class EntityIdIsLocalParam with _$EntityIdIsLocalParam {
  const EntityIdIsLocalParam._();
  const factory EntityIdIsLocalParam({
    required String id,
    required bool isLocal,
    required bool isNew,
    String? createPedidoFromClienteId,
    String? createVisitaFromClienteId,
    PedidoVentaLinea? addLineaDesdeArticulo,
  }) = _EntityIdIsLocalParam;
}
