import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/error_message_widget.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/progress_indicator_widget.dart';

import 'package:jbm_nikel_mobile/src/core/presentation/toasts.dart';
import 'package:jbm_nikel_mobile/src/core/routing/app_auto_router.dart';
import 'package:jbm_nikel_mobile/src/features/app_initialization/presentation/splash_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/sync/application/sync_notifier_provider.dart';
import '../../../../generated/l10n.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/presentation/theme/app_sizes.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SplashControllerState>(
      splashPageControllerProvider,
      (_, state) {
        state.maybeWhen(
          orElse: () {},
          data: () {
            ref.read(syncNotifierProvider.notifier).syncAllInCompute();
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
