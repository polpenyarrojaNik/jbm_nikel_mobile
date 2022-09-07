import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
import '../infrastructure/sync_repository.dart';

part 'sync_page_controller.freezed.dart';

final syncPageStateNotifier =
    StateNotifierProvider.autoDispose<SyncPageNotifier, SyncPageState>(
  (ref) => SyncPageNotifier(
    ref.watch(syncRepositoryProvider),
  ),
);

@freezed
class SyncPageState with _$SyncPageState {
  const SyncPageState._();
  const factory SyncPageState.initial() = _Initial;
  const factory SyncPageState.loadInProgress() = _LoadInProgress;
  const factory SyncPageState.syncSuccess() = _SyncSuccess;
  const factory SyncPageState.loadFailure(
    Object error,
  ) = _LoadFailure;
}

class SyncPageNotifier extends StateNotifier<SyncPageState> {
  final SyncRepository syncRepository;
  SyncPageNotifier(this.syncRepository) : super(const SyncPageState.initial());

  Future<void> syncValuesInLocalDB() async {
    state = const SyncPageState.loadInProgress();
    try {
      print(DateTime.now().toIso8601String());
      await syncRepository.syncPedidoVenta();
      await syncRepository.syncPedidoVentaLineas();
      await syncRepository.syncPedidoVentaEstado();
      // await syncRepository.syncCliente();
      // await syncRepository.syncClienteUsuario();
      // await syncRepository.syncClienteDireccion();
      // await syncRepository.syncClienteContacto();
      // await syncRepository.syncClienteDescuento();
      // await syncRepository.syncClientePrecioNeto();
      // await syncRepository.syncClienteGrupoNeto();
      // await syncRepository.syncClientePagoPendiente();
      await syncRepository.syncArticulosTop();
      await syncRepository.syncArticulo();
      await syncRepository.syncArticuloEmpresaIva();
      await syncRepository.syncArticuloComponentes();
      await syncRepository.syncArticuloGrupoNeto();
      await syncRepository.syncArticuloTarifaPrecio();
      await syncRepository.syncArticuloRecambio();
      await syncRepository.syncArticuloSustitutivo();
      // await syncRepository.syncEstadisticasClienteUsuarioVentas();
      // await syncRepository.syncEstadisticasUltimosPrecios();
      // await syncRepository.syncVisita();
      // await syncRepository.syncPais();
      // await syncRepository.syncDivisa();
      // await syncRepository.syncPlazoDeCobro();
      // await syncRepository.syncMetodoDeCobros();
      // await syncRepository.syncFamilia();
      // await syncRepository.syncSubfamilia();
      state = const SyncPageState.syncSuccess();
    } on AppException catch (e) {
      state = SyncPageState.loadFailure(e);
    } catch (e) {
      rethrow;
    } finally {
      print(DateTime.now().toIso8601String());
    }
  }
}
