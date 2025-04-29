import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/exceptions/app_exception.dart';
import '../../infrastructure/pedido_venta_repository.dart';
part 'pedido_venta_adjunto_controller.freezed.dart';

@freezed
class PedidoVentaAdjuntoState with _$PedidoVentaAdjuntoState {
  const PedidoVentaAdjuntoState._();
  const factory PedidoVentaAdjuntoState.initial() = _Initial;
  const factory PedidoVentaAdjuntoState.loading() = _Loading;
  const factory PedidoVentaAdjuntoState.data(File? file) = _Data;
  const factory PedidoVentaAdjuntoState.error(String failure) = _Error;
}

final pedidoVentaAdjuntoControllerProvider = StateNotifierProvider.autoDispose<
  PedidoVentaAdjuntoController,
  PedidoVentaAdjuntoState
>((ref) => PedidoVentaAdjuntoController(ref));

class PedidoVentaAdjuntoController
    extends StateNotifier<PedidoVentaAdjuntoState> {
  final Ref _ref;

  PedidoVentaAdjuntoController(this._ref)
    : super(const PedidoVentaAdjuntoState.initial());

  Future<void> getAttachmentFile({required String pedidoVentaId}) async {
    try {
      state = const PedidoVentaAdjuntoState.loading();

      final file = await _ref
          .read(pedidoVentaRepositoryProvider)
          .getDocumentFile(pedidoVentaId: pedidoVentaId);
      state = PedidoVentaAdjuntoState.data(file);
    } on AppException catch (e) {
      state = PedidoVentaAdjuntoState.error(e.details.message);
    } catch (e) {
      rethrow;
    }
  }
}
