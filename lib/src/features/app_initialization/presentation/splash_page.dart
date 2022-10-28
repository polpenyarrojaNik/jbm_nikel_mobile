import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';

import 'package:jbm_nikel_mobile/src/core/presentation/toasts.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/app_initialization/presentation/splash_page_controller.dart';

import '../../../../generated/l10n.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/presentation/theme/app_sizes.dart';
import '../domain/splash_progress.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SplashControllerState>(
      splashPageControllerProvider,
      (_, state) {
        state.maybeWhen(
          orElse: () {},
          data: (splashProgress) {
            if (splashProgress.value == 99) {
              context.router.replace(
                ArticuloListaRoute(isSearchArticuloForForm: false),
              );
            }
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
          data: (splashProgress) =>
              SyncProgressList(currentSplashProgress: splashProgress),
        ),
      ),
    );
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

class SyncProgressList extends StatelessWidget {
  const SyncProgressList({super.key, required this.currentSplashProgress});

  final SplashProgress currentSplashProgress;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        SyncProgressItem(
            title: S.of(context).splash_articulos,
            currentSplashProgress: currentSplashProgress,
            splashProgressItem: SplashProgress.syncArticulos),
        const Divider(),
        SyncProgressItem(
            title: S.of(context).splash_clientes,
            currentSplashProgress: currentSplashProgress,
            splashProgressItem: SplashProgress.syncClientes),
        const Divider(),
        SyncProgressItem(
            title: S.of(context).splash_pedidos,
            currentSplashProgress: currentSplashProgress,
            splashProgressItem: SplashProgress.syncPedidos),
        const Divider(),
        SyncProgressItem(
            title: S.of(context).splash_visitas,
            currentSplashProgress: currentSplashProgress,
            splashProgressItem: SplashProgress.syncVisitas),
        const Divider(),
        SyncProgressItem(
            title: S.of(context).splash_otras,
            currentSplashProgress: currentSplashProgress,
            splashProgressItem: SplashProgress.syncAuxiliar)
      ],
    );
  }
}

class SyncProgressItem extends StatelessWidget {
  const SyncProgressItem(
      {super.key,
      required this.title,
      required this.currentSplashProgress,
      required this.splashProgressItem});

  final String title;
  final SplashProgress currentSplashProgress;
  final SplashProgress splashProgressItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          (currentSplashProgress.value != 0 &&
                  currentSplashProgress.value >= splashProgressItem.value)
              ? const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              : ((currentSplashProgress.value + 1) < splashProgressItem.value)
                  ? const Icon(
                      Icons.remove_circle,
                      color: Colors.orange,
                    )
                  : const SizedBox(
                      height: 25,
                      width: 25,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
        ],
      ),
    );
  }
}
