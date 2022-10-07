import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/features/settings/infrastructure/settings_repository.dart';
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
    final state = ref.watch(packageInfoProvider);
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: Text(
          S.of(context).settings_titulo,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (usuario != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnFieldTextDetalle(
                      fieldTitleValue: 'Usuario', value: usuario.id),
                  ColumnFieldTextDetalle(
                      fieldTitleValue: 'Nombre usuario',
                      value: usuario.nombreUsuario),
                  if (usuario.test)
                    ColumnFieldTextDetalle(
                        fieldTitleValue: 'Test',
                        value: usuario.test.toString()),
                ],
              ),
            state.when(
              data: (packageInfo) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColumnFieldTextDetalle(
                      fieldTitleValue: 'Versión',
                      value:
                          '${packageInfo.version}(${packageInfo.buildNumber})')
                ],
              ),
              error: (e, _) => ErrorMessageWidget(e.toString()),
              loading: () => const ProgressIndicatorWidget(),
            ),
            gapH16,
            const _SignoutButton()
          ],
        ),
      ),
    );
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
        children: const [
          Icon(Icons.logout),
          SizedBox(width: 5),
          Text(
            'Cerrar sessión',
          )
        ],
      ),
    );
  }

  void logout(BuildContext context, WidgetRef ref) {
    ref.read(usuarioNotifierProvider.notifier).signOut();
  }
}
