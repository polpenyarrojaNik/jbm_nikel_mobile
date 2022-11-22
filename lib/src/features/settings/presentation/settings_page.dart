import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/settings/infrastructure/settings_repository.dart';
import 'package:jbm_nikel_mobile/src/features/settings/presentation/settings_page_controller.dart';
import 'package:jbm_nikel_mobile/src/features/sync/application/sync_notifier_provider.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';

import '../../../../generated/l10n.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usuario = ref.watch(usuarioNotifierProvider);
    final statePackageInfo = ref.watch(packageInfoProvider);
    final state = ref.watch(settingPageControllerProvider);

    ref.listen<AsyncValue>(settingPageControllerProvider, (_, state) {
      state.maybeWhen(
        orElse: () {},
        data: (_) => ref.read(syncNotifierProvider.notifier).syncAllInCompute(),
      );
    });
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Text(
          S.of(context).settings_titulo,
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: state.maybeWhen(
              orElse: () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (usuario != null)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ColumnFieldTextDetalle(
                                fieldTitleValue: S.of(context).settings_user,
                                value: usuario.id),
                            ColumnFieldTextDetalle(
                                fieldTitleValue:
                                    S.of(context).settings_nombre_usuario,
                                value: usuario.nombreUsuario),
                            if (usuario.test)
                              ColumnFieldTextDetalle(
                                  fieldTitleValue: 'Test',
                                  value: usuario.test.toString()),
                          ],
                        ),
                      statePackageInfo.when(
                        data: (packageInfo) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ColumnFieldTextDetalle(
                                fieldTitleValue: S.of(context).settings_version,
                                value:
                                    '${packageInfo.version} (${packageInfo.buildNumber})')
                          ],
                        ),
                        error: (e, _) => ErrorMessageWidget(e.toString()),
                        loading: () => const ProgressIndicatorWidget(),
                      ),
                      gapH16,
                      const _ActualizarArchivoBaseDeDatosButton(),
                      const _SignoutButton()
                    ],
                  ),
              loading: () => const ProgressIndicatorWidget())),
    );
  }
}

class _ActualizarArchivoBaseDeDatosButton extends ConsumerWidget {
  const _ActualizarArchivoBaseDeDatosButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => replaceDatabase(ref),
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

  void replaceDatabase(WidgetRef ref) {
    ref.read(settingPageControllerProvider.notifier).replaceDatabase();
  }
}

class _SignoutButton extends ConsumerWidget {
  const _SignoutButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => logout(context, ref),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.logout),
          const SizedBox(width: 5),
          Text(
            S.of(context).settings_cerrar_sesion,
          )
        ],
      ),
    );
  }

  void logout(BuildContext context, WidgetRef ref) {
    ref.read(usuarioNotifierProvider.notifier).signOut();
  }
}
