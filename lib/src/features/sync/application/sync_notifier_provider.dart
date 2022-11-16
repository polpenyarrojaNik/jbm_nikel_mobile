import 'package:dio/dio.dart';
import 'package:drift/isolate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/domain/isolate_args.dart';
import '../../../core/infrastructure/database.dart';
import '../../../core/infrastructure/sync_service.dart';
import '../../../core/presentation/app.dart';
import '../../app_initialization/domain/sync_progress.dart';
import '../../usuario/domain/usuario.dart';

part 'sync_notifier_provider.freezed.dart';

final syncNotifierProvider =
    StateNotifierProvider<SyncNotifier, SyncControllerState>(
  (ref) {
    final user = ref.watch(usuarioNotifierProvider);

    return SyncNotifier(user!);
  },
);

class SyncNotifier extends StateNotifier<SyncControllerState> {
  final Usuario user;
  SyncNotifier(this.user) : super(const SyncControllerState.initial());

  Future<void> syncAllInCompute() async {
    state = const SyncControllerState.synchronizing();

    await compute(syncInBackground, IsolateArgs(user, isolateConnectPort!));

    state = const SyncControllerState.synchronized();
  }
}

Future<SyncProgress> syncInBackground(IsolateArgs isolateArgs) async {
  try {
    final database = await createDatabaseConnection(isolateArgs);
    final SyncService syncService =
        SyncService(database, Dio(), isolateArgs.user);

    return syncService.syncAllTable();
  } catch (e) {
    print(e);
    rethrow;
  }
}

Future<AppDatabase> createDatabaseConnection(IsolateArgs isolateArgs) async {
  final isolateSendPort = isolateArgs.isolateSendPort;
  final isolate = DriftIsolate.fromConnectPort(isolateSendPort);
  isolateSendPort.send(isolate.connectPort);
  final connection = await isolate.connect();
  return AppDatabase.connect(connection, false);
}

void updateSyncDates(SyncProgress syncProgress) async {
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

@freezed
class SyncControllerState with _$SyncControllerState {
  const SyncControllerState._();
  const factory SyncControllerState.initial() = _initial;

  const factory SyncControllerState.synchronizing() = _shinchronizing;
  const factory SyncControllerState.synchronized() = _synchronized;
  const factory SyncControllerState.error(Object error,
      {StackTrace? stackTrace}) = _error;
}
