import 'package:dio/dio.dart';
import 'package:drift/drift.dart' hide JsonKey;
import 'package:drift/isolate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/local_database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/log_repository.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_datetime_dto.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/usuario_service.dart';

import '../../../core/domain/isolate_args.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../../../core/infrastructure/sync_service.dart';
import '../../app_initialization/domain/sync_progress.dart';
import '../../usuario/domain/usuario.dart';

part 'sync_notifier_provider.freezed.dart';

final syncNotifierProvider =
    StateNotifierProvider<SyncNotifier, SyncControllerState>(
  (ref) {
    final user = ref.watch(usuarioNotifierProvider);
    final localDb = ref.watch(appLocalDatabaseProvider);
    final usuarioService = ref.watch(usuarioServiceProvider);

    return SyncNotifier(user, localDb, usuarioService);
  },
);

class SyncNotifier extends StateNotifier<SyncControllerState> {
  final Usuario? user;
  final LocalAppDatabase _localDb;
  final UsuarioService usuarioService;

  SyncNotifier(this.user, this._localDb, this.usuarioService)
      : super(const SyncControllerState.initial());

  Future<void> syncAllInCompute({required bool initAppProcess}) async {
    if (state != const SyncControllerState.synchronizing()) {
      if (initAppProcess || await more30MinFromLastSync()) {
        state = const SyncControllerState.synchronizing();

        await usuarioService.syncUser();

        final syncProgress = await compute(
            syncInBackground,
            IsolateArgs(
              user!,
              isolateRemoteDatabaseConnectPort!,
              isolateLocalDatabaseConnectPort!,
            ));

        await updateSyncDates(syncProgress);

        state = const SyncControllerState.synchronized();
      }
    }
  }

  Future<void> updateSyncDates(SyncProgress syncProgress) async {
    final finishSyncDate = DateTime.now().toUtc();

    if (syncProgress.index > 0) {
      await _localDb.update(_localDb.syncDateTimeTable).write(
          SyncDateTimeTableCompanion(
              id: const Value(1), articuloUltimaSync: Value(finishSyncDate)));

      if (syncProgress.index > 1) {
        await _localDb.update(_localDb.syncDateTimeTable).write(
            SyncDateTimeTableCompanion(
                id: const Value(1), clienteUltimaSync: Value(finishSyncDate)));
      }

      if (syncProgress.index > 2) {
        await _localDb.update(_localDb.syncDateTimeTable).write(
            SyncDateTimeTableCompanion(
                id: const Value(1), pedidoUltimaSync: Value(finishSyncDate)));
      }
      if (syncProgress.index > 3) {
        await _localDb.update(_localDb.syncDateTimeTable).write(
            SyncDateTimeTableCompanion(
                id: const Value(1), visitaUltimaSync: Value(finishSyncDate)));
      }
    }
  }

  Future<bool> more30MinFromLastSync() async {
    final syncDateTimeDTO =
        await _localDb.select(_localDb.syncDateTimeTable).getSingle();
    final isMore30MinSalesOrder = more30MinFromPedidoVenta(syncDateTimeDTO);
    if (isMore30MinSalesOrder) {
      return true;
    }

    final isMore30MinArticulo = more30MinFromArticulos(syncDateTimeDTO);
    if (isMore30MinArticulo) {
      return true;
    }
    final isMore30MinCliente = more30MinFromClientes(syncDateTimeDTO);
    if (isMore30MinCliente) {
      return true;
    }
    final isMore30MinVisitas = more30MinFromVisitas(syncDateTimeDTO);
    if (isMore30MinVisitas) {
      return true;
    }
    return false;
  }

  bool more30MinFromPedidoVenta(SyncDateTimeDTO syncDateTimeDTO) {
    return syncDateTimeDTO.pedidoUltimaSync
        .add(const Duration(minutes: 30))
        .isBefore(DateTime.now().toUtc());
  }

  bool more30MinFromArticulos(SyncDateTimeDTO syncDateTimeDTO) {
    return syncDateTimeDTO.articuloUltimaSync
        .add(const Duration(minutes: 30))
        .isBefore(DateTime.now().toUtc());
  }

  bool more30MinFromClientes(SyncDateTimeDTO syncDateTimeDTO) {
    return syncDateTimeDTO.clienteUltimaSync
        .add(const Duration(minutes: 30))
        .isBefore(DateTime.now().toUtc());
  }

  bool more30MinFromVisitas(SyncDateTimeDTO syncDateTimeDTO) {
    return syncDateTimeDTO.visitaUltimaSync
        .add(const Duration(minutes: 30))
        .isBefore(DateTime.now().toUtc());
  }
}

Future<SyncProgress> syncInBackground(IsolateArgs isolateArgs) async {
  try {
    final remoteDb = await createRemoteDatabaseConnection(isolateArgs);
    final localDb = await createLocalDatabaseConnection(isolateArgs);

    final dio = Dio();

    final SyncService syncService = SyncService(remoteDb, localDb, dio,
        isolateArgs.user, null, LogRepository(dio, localDb, isolateArgs.user));

    return await syncService.syncAllTable();
  } catch (e) {
    rethrow;
  }
}

Future<RemoteAppDatabase> createRemoteDatabaseConnection(
    IsolateArgs isolateArgs) async {
  final isolateRemoteSendPort = isolateArgs.isolateRemoteSendPort;
  final isolate = DriftIsolate.fromConnectPort(isolateRemoteSendPort);
  isolateRemoteSendPort.send(isolate.connectPort);
  final connection = await isolate.connect();
  return RemoteAppDatabase.connect(connection);
}

Future<LocalAppDatabase> createLocalDatabaseConnection(
    IsolateArgs isolateArgs) async {
  final isolateLocalSendPort = isolateArgs.isolateLocalSendPort;
  final isolate = DriftIsolate.fromConnectPort(isolateLocalSendPort);
  isolateLocalSendPort.send(isolate.connectPort);
  final connection = await isolate.connect();
  return LocalAppDatabase.connect(connection);
}

@freezed
class SyncControllerState with _$SyncControllerState {
  const SyncControllerState._();
  const factory SyncControllerState.initial() = _initial;

  const factory SyncControllerState.synchronizing() = _shinchronizing;
  const factory SyncControllerState.synchronized() = _synchronized;
  const factory SyncControllerState.error(Object error,
      {StackTrace? stackTrace}) = _error;
}
