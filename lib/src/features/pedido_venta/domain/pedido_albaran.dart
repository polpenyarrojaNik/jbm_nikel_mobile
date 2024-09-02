import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/expediciones/domain/tracking_estado.dart';

part 'pedido_albaran.freezed.dart';

@freezed
class PedidoAlbaran with _$PedidoAlbaran {
  const PedidoAlbaran._();
  const factory PedidoAlbaran(
      {required String empresaId,
      required String pedidoVentaId,
      required String albaranId,
      required DateTime fechaAlbaran,
      String? agencia,
      String? trackId,
      TrackingEstado? trackingEstado,
      required DateTime lastUpdated,
      required bool deleted}) = _PedidoAlbaran;
}
