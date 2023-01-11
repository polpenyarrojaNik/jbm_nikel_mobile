import 'package:dio/dio.dart';
import 'package:drift/isolate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/local_database.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/domain/isolate_args.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../../../core/infrastructure/sync_service.dart';
import '../../../core/presentation/app.dart';
import '../../app_initialization/domain/sync_progress.dart';
import '../../usuario/domain/usuario.dart';

part 'sync_notifier_provider.freezed.dart';

final syncNotifierProvider =
    StateNotifierProvider<SyncNotifier, SyncControllerState>(
  (ref) {
    final user = ref.watch(usuarioNotifierProvider);

    return SyncNotifier(user);
  },
);

class SyncNotifier extends StateNotifier<SyncControllerState> {
  final Usuario? user;
  SyncNotifier(this.user) : super(const SyncControllerState.initial());

  Future<void> syncAllInCompute({required bool initAppProcess}) async {
    if (state != const SyncControllerState.synchronizing()) {
      if (initAppProcess || await more30MinFromLastSync()) {
        state = const SyncControllerState.synchronizing();

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
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    final finishSyncDate = DateTime.now().toUtc();

    if (syncProgress.index > 0) {
      await sharedPreferences.setString(
          articuloFechaUltimaSyncKey, finishSyncDate.toIso8601String());

      if (syncProgress.index > 1) {
        await sharedPreferences.setString(
            clienteFechaUltimaSyncKey, finishSyncDate.toIso8601String());
      }

      if (syncProgress.index > 2) {
        await sharedPreferences.setString(
            pedidoVentaFechaUltimaSyncKey, finishSyncDate.toIso8601String());
      }
      if (syncProgress.index > 3) {
        await sharedPreferences.setString(
            visitaFechaUltimaSyncKey, finishSyncDate.toIso8601String());
      }
    }
  }
}

Future<SyncProgress> syncInBackground(IsolateArgs isolateArgs) async {
  try {
    final remoteDb = await createRemoteDatabaseConnection(isolateArgs);
    final localDb = await createLocalDatabaseConnection(isolateArgs);

    final SyncService syncService =
        SyncService(remoteDb, localDb, Dio(), isolateArgs.user);

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

Future<bool> more30MinFromLastSync() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final isMore30MinSalesOrder = more30MinFromPedidoVenta(sharedPreferences);
  if (isMore30MinSalesOrder) {
    return true;
  }

  final isMore30MinArticulo = more30MinFromArticulos(sharedPreferences);
  if (isMore30MinArticulo) {
    return true;
  }
  final isMore30MinCliente = more30MinFromClientes(sharedPreferences);
  if (isMore30MinCliente) {
    return true;
  }
  final isMore30MinVisitas = more30MinFromVisitas(sharedPreferences);
  if (isMore30MinVisitas) {
    return true;
  }
  return false;
}

bool more30MinFromPedidoVenta(SharedPreferences sharedPreferences) {
  final pedidoVentaLastSyncDate =
      sharedPreferences.getString(pedidoVentaFechaUltimaSyncKey);

  return (pedidoVentaLastSyncDate != null)
      ? (DateTime.parse(pedidoVentaLastSyncDate)
              .add(const Duration(minutes: 30)))
          .isBefore(DateTime.now().toUtc())
      : false;
}

bool more30MinFromArticulos(SharedPreferences sharedPreferences) {
  final articuloLastSyncDate =
      sharedPreferences.getString(articuloFechaUltimaSyncKey);

  return (articuloLastSyncDate != null)
      ? (DateTime.parse(articuloLastSyncDate).add(const Duration(minutes: 30)))
          .isBefore(DateTime.now().toUtc())
      : false;
}

bool more30MinFromClientes(SharedPreferences sharedPreferences) {
  final clienteLastSyncDate =
      sharedPreferences.getString(clienteFechaUltimaSyncKey);

  return (clienteLastSyncDate != null)
      ? (DateTime.parse(clienteLastSyncDate).add(const Duration(minutes: 30)))
          .isBefore(DateTime.now().toUtc())
      : false;
}

bool more30MinFromVisitas(SharedPreferences sharedPreferences) {
  final visitaLastSyncDate =
      sharedPreferences.getString(visitaFechaUltimaSyncKey);

  return (visitaLastSyncDate != null)
      ? (DateTime.parse(visitaLastSyncDate).add(const Duration(minutes: 30)))
          .isBefore(DateTime.now().toUtc())
      : false;
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
