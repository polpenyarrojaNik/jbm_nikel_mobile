import 'package:freezed_annotation/freezed_annotation.dart';

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
      required DateTime lastUpdated,
      required bool deleted}) = _PedidoAlbaran;
}
