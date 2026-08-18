import 'package:dio/dio.dart';
import 'package:drift/drift.dart' hide JsonKey;
import 'package:drift/isolate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart';

import '../../../core/domain/isolate_args.dart';
import '../../../core/helpers/error_logger.dart';
import '../../../core/infrastructure/local_database.dart';
import '../../../core/infrastructure/log_repository.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../../../core/infrastructure/sync_datetime_dto.dart';
import '../../../core/infrastructure/sync_service.dart';
import '../../app_initialization/domain/sync_progress.dart';
import '../../usuario/application/usuario_notifier.dart';
import '../../usuario/domain/usuario.dart';
import '../../usuario/infrastructure/usuario_service.dart';

part 'sync_notifier_provider.freezed.dart';

final syncNotifierProvider =
    StateNotifierProvider<SyncNotifier, SyncControllerState>((ref) {
      final user = ref.watch(usuarioNotifierProvider);
      final localDb = ref.watch(appLocalDatabaseProvider);
      final usuarioService = ref.watch(usuarioServiceProvider);

      return SyncNotifier(user, localDb, usuarioService);
    });

class SyncNotifier extends StateNotifier<SyncControllerState> {
  static const defaultSyncInterval = Duration(minutes: 30);
  static const pendingSalesOrderSyncInterval = Duration(minutes: 5);

  final Usuario? user;
  final LocalAppDatabase _localDb;
  final UsuarioService usuarioService;

  SyncNotifier(this.user, this._localDb, this.usuarioService)
    : super(const SyncControllerState.initial());

  Future<void> syncAllInCompute({required bool initAppProcess}) async {
    if (state != const SyncControllerState.synchronizing()) {
      if (initAppProcess || await shouldSyncFromLastSync()) {
        state = const SyncControllerState.synchronizing();

        await usuarioService.syncUser();
        final documentDirectory = await getApplicationDocumentsDirectory();

        final syncProgress = await compute(
          syncInBackground,
          IsolateArgs(
            user!,
            isolateRemoteDatabaseConnectPort!,
            isolateLocalDatabaseConnectPort!,
            documentDirectory,
          ),
        );

        await updateSyncDates(syncProgress);

        state = const SyncControllerState.synchronized();
      }
    }
  }

  Future<void> updateSyncDates(SyncProgress syncProgress) async {
    if (syncProgress.index > 0) {
      final finishSyncDate = DateTime.now().toUtc();

      await _localDb
          .update(_localDb.syncDateTimeTable)
          .write(
            SyncDateTimeTableCompanion(
              id: const Value(1),
              articuloUltimaSync: Value(finishSyncDate),
            ),
          );

      if (syncProgress.index > 1) {
        await _localDb
            .update(_localDb.syncDateTimeTable)
            .write(
              SyncDateTimeTableCompanion(
                id: const Value(1),
                clienteUltimaSync: Value(finishSyncDate),
              ),
            );
      }

      if (syncProgress.index > 2) {
        await _localDb
            .update(_localDb.syncDateTimeTable)
            .write(
              SyncDateTimeTableCompanion(
                id: const Value(1),
                pedidoUltimaSync: Value(finishSyncDate),
              ),
            );
      }
      if (syncProgress.index > 3) {
        await _localDb
            .update(_localDb.syncDateTimeTable)
            .write(
              SyncDateTimeTableCompanion(
                id: const Value(1),
                visitaUltimaSync: Value(finishSyncDate),
              ),
            );
      }
    }
  }

  Future<bool> shouldSyncFromLastSync() async {
    final syncDateTimeDTO = await _localDb
        .select(_localDb.syncDateTimeTable)
        .getSingle();
    final hasPendingSalesOrders = await hasPedidosPendientesSync();
    final shouldSyncSalesOrder = shouldSyncPedidoVenta(
      syncDateTimeDTO,
      syncInterval: hasPendingSalesOrders
          ? pendingSalesOrderSyncInterval
          : defaultSyncInterval,
    );
    if (shouldSyncSalesOrder) {
      return true;
    }

    final shouldSyncArticulo = shouldSyncArticulos(syncDateTimeDTO);
    if (shouldSyncArticulo) {
      return true;
    }
    final shouldSyncCliente = shouldSyncClientes(syncDateTimeDTO);
    if (shouldSyncCliente) {
      return true;
    }
    final shouldSyncVisits = shouldSyncVisitas(syncDateTimeDTO);
    if (shouldSyncVisits) {
      return true;
    }
    return false;
  }

  Future<bool> hasPedidosPendientesSync() async {
    final query = _localDb.select(_localDb.pedidoVentaLocalTable)
      ..where(
        (tbl) =>
            tbl.borrador.equals('N') &
            (tbl.tratada.equals('N') | tbl.enviada.equals('N')),
      )
      ..limit(1);

    final pedidoPendiente = await query.getSingleOrNull();
    return pedidoPendiente != null;
  }

  bool shouldSyncPedidoVenta(
    SyncDateTimeDTO syncDateTimeDTO, {
    Duration syncInterval = defaultSyncInterval,
  }) {
    return syncDateTimeDTO.pedidoUltimaSync
        .add(syncInterval)
        .isBefore(DateTime.now().toUtc());
  }

  bool shouldSyncArticulos(SyncDateTimeDTO syncDateTimeDTO) {
    return syncDateTimeDTO.articuloUltimaSync
        .add(defaultSyncInterval)
        .isBefore(DateTime.now().toUtc());
  }

  bool shouldSyncClientes(SyncDateTimeDTO syncDateTimeDTO) {
    return syncDateTimeDTO.clienteUltimaSync
        .add(defaultSyncInterval)
        .isBefore(DateTime.now().toUtc());
  }

  bool shouldSyncVisitas(SyncDateTimeDTO syncDateTimeDTO) {
    return syncDateTimeDTO.visitaUltimaSync
        .add(defaultSyncInterval)
        .isBefore(DateTime.now().toUtc());
  }
}

Future<SyncProgress> syncInBackground(IsolateArgs isolateArgs) async {
  final remoteDb = await createRemoteDatabaseConnection(isolateArgs);
  final localDb = await createLocalDatabaseConnection(isolateArgs);

  final dio = Dio();

  final syncService = SyncService(
    remoteDb,
    localDb,
    dio,
    isolateArgs.user,
    null,
    LogRepository(dio, localDb, isolateArgs.user),
    isolateArgs.documentDirectory,
    ErrorLogger(),
  );

  return syncService.syncAllTable();
}

Future<RemoteAppDatabase> createRemoteDatabaseConnection(
  IsolateArgs isolateArgs,
) async {
  final isolateRemoteSendPort = isolateArgs.isolateRemoteSendPort;
  final isolate = DriftIsolate.fromConnectPort(isolateRemoteSendPort);
  isolateRemoteSendPort.send(isolate.connectPort);
  final connection = await isolate.connect();
  return RemoteAppDatabase.connect(connection);
}

Future<LocalAppDatabase> createLocalDatabaseConnection(
  IsolateArgs isolateArgs,
) async {
  final isolateLocalSendPort = isolateArgs.isolateLocalSendPort;
  final isolate = DriftIsolate.fromConnectPort(isolateLocalSendPort);
  isolateLocalSendPort.send(isolate.connectPort);
  final connection = await isolate.connect();
  return LocalAppDatabase.connect(connection);
}

@freezed
abstract class SyncControllerState with _$SyncControllerState {
  const SyncControllerState._();
  const factory SyncControllerState.initial() = _initial;

  const factory SyncControllerState.synchronizing() = _shinchronizing;
  const factory SyncControllerState.synchronized() = _synchronized;
  const factory SyncControllerState.error(
    Object error, {
    StackTrace? stackTrace,
  }) = _error;
}
