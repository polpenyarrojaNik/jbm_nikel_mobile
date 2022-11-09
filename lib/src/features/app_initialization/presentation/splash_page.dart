import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:drift/isolate.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_isolate/flutter_isolate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/app.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';

import 'package:jbm_nikel_mobile/src/core/presentation/toasts.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/app_initialization/presentation/splash_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../generated/l10n.dart';
import '../../../core/domain/isolate_args.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/infrastructure/sync_service.dart';
import '../../../core/presentation/theme/app_sizes.dart';
import '../domain/sync_progress.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SplashControllerState>(
      splashPageControllerProvider,
      (_, state) {
        state.maybeWhen(
          orElse: () {},
          data: () async {
            final user = ref.read(usuarioNotifierProvider);
            compute(syncInBackground, IsolateArgs(user!, isolateConnectPort!))
                .then((syncProgress) => updateSyncDates(syncProgress));
            context.router.replace(
              ArticuloListaRoute(isSearchArticuloForForm: false),
            );
          },
          error: (e, _) {
            if (e is AppException) {
              e.maybeWhen(
                orElse: () => context.router.replace(
                  ArticuloListaRoute(isSearchArticuloForForm: false),
                ),
              );
            }
            showToast(e.toString(), context);
          },
        );
      },
    );
    final state = ref.watch(splashPageControllerProvider);
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: state.when(
          downloadDatabase: () => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ProgressIndicatorWidget(),
              gapH8,
              Text(S.of(context).splash_descargandoBaseDeDatos),
            ],
          ),
          initial: () => Container(),
          error: (e, _) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ErrorMessageWidget(e.toString()),
              const _ReintentarSyncButton(),
            ],
          ),
          data: () => Container(),
        ),
      ),
    );
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

  Future<SyncProgress> syncInBackground(IsolateArgs isolateArgs) async {
    try {
      final isolateSendPort = isolateArgs.isolateSendPort;
      final isolate = DriftIsolate.fromConnectPort(isolateSendPort);
      isolateSendPort.send(isolate.connectPort);
      final connection = await isolate.connect();
      final database = AppDatabase.connect(connection, false);
      final SyncService syncService =
          SyncService(database, Dio(), isolateArgs.usuario);

      return syncService.syncAllTable();

      print('----------ISOLATE FINISHED-----------');
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}

class _ReintentarSyncButton extends ConsumerWidget {
  const _ReintentarSyncButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => reintantarSync(ref),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.refresh),
          const SizedBox(width: 5),
          Text(
            S.of(context).settings_reemplazarBaseDeDatos,
          )
        ],
      ),
    );
  }

  void reintantarSync(WidgetRef ref) {
    ref.read(splashPageControllerProvider.notifier).initializeApp();
  }
}
