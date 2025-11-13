import 'dart:io';

import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/pedido_venta_linea.dart';
import '../../infrastructure/pedido_venta_repository.dart';

part 'crear_csv_controller.freezed.dart';

final crearCsvControllerProvider =
    StateNotifierProvider.autoDispose<
      CrearCsvController,
      CrearCsvControllerState
    >((ref) {
      final pedidoVentaRepository = ref.watch(pedidoVentaRepositoryProvider);

      return CrearCsvController(pedidoVentaRepository: pedidoVentaRepository);
    });

@freezed
class CrearCsvControllerState with _$CrearCsvControllerState {
  const CrearCsvControllerState._();

  const factory CrearCsvControllerState.loading() = _loading;
  const factory CrearCsvControllerState.initial() = _initial;
  const factory CrearCsvControllerState.error(
    Object error, {
    StackTrace? stackTrace,
  }) = _error;
  const factory CrearCsvControllerState.data(File csvFile) = _data;
}

class CrearCsvController extends StateNotifier<CrearCsvControllerState> {
  final PedidoVentaRepository pedidoVentaRepository;

  CrearCsvController({required this.pedidoVentaRepository})
    : super(const CrearCsvControllerState.initial());

  Future<void> crearCsvController({
    required String pedidoVentaAppId,
    required List<PedidoVentaLinea> pedidoVentaLineaList,
  }) async {
    state = const CrearCsvControllerState.loading();
    try {
      final csvFile = await pedidoVentaRepository.createPedidoVentaLineasCSV(
        pedidoVentaAppId: pedidoVentaAppId,
        pedidoVentaLineaList: pedidoVentaLineaList,
      );
      state = CrearCsvControllerState.data(csvFile);
    } catch (e, stack) {
      state = CrearCsvControllerState.error(e, stackTrace: stack);
    }
  }
}
