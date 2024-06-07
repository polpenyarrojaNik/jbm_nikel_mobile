import 'package:auto_route/auto_route.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/local_database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/sync_service.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/column_field_text_detail.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/theme/app_sizes.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/toasts.dart';
import 'package:jbm_nikel_mobile/src/features/settings/infrastructure/settings_repository.dart';
import 'package:jbm_nikel_mobile/src/features/settings/presentation/delete_local_database_controller.dart';
import 'package:jbm_nikel_mobile/src/features/settings/presentation/export_database_controller.dart';
import 'package:jbm_nikel_mobile/src/features/sync/application/sync_notifier_provider.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/application/usuario_notifier.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../generated/l10n.dart';
import '../../../core/presentation/common_widgets/app_drawer.dart';
import '../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';
import '../../../core/routing/app_auto_router.dart';
import '../../notifications/core/application/notification_provider.dart';
import 'delete_database_controller.dart';

@RoutePage()
class SettingsPage extends ConsumerWidget {
  SettingsPage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usuario = ref.watch(usuarioNotifierProvider);
    final statePackageInfo = ref.watch(packageInfoProvider);
    final stateSync = ref.watch(syncNotifierProvider);

    ref.listen<AsyncValue>(
      notificationNotifierProvider,
      (_, state) => state.maybeWhen(
        orElse: () {},
        data: (notificationId) {
          if (notificationId != null) {
            context.router
                .push(NotificationDetailRoute(notificationId: notificationId));
          }
        },
      ),
    );

    ref.listen<ExportDatabaseControllerState>(exportDatabaseControllerProvider,
        (_, state) {
      state.maybeWhen(
          orElse: () => null,
          loading: () =>
              showToast(S.of(context).settings_creandoArchivo, context),
          data: (file) => enviarDatabase(
              file: file, context: context, usuarioId: usuario!.id),
          error: (error, _) => showToast(error.toString(), context));
    });

    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      appBar: CommonAppBar(
        titleText: (S.of(context).settings_titulo),
        scaffoldKey: scaffoldKey,
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
                      fieldTitleValue: S.of(context).settings_user,
                      value: usuario.id),
                  ColumnFieldTextDetalle(
                      fieldTitleValue: S.of(context).settings_nombre_usuario,
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
            stateSync.maybeWhen(
              orElse: () => Container(),
              synchronized: () => const _ActualizarArchivoBaseDeDatosButton(),
            ),
            stateSync.maybeWhen(
              orElse: () => Container(),
              synchronized: () =>
                  const _ReemplazarArchivoBaseDeDatosLocalButton(),
            ),
            stateSync.maybeWhen(
              orElse: () => Container(),
              synchronized: () =>
                  _EnviarBaseDeDatosLocalButton(usuarioId: usuario!.id),
            ),
            stateSync.maybeWhen(
              orElse: () => Container(),
              synchronized: () => const _SignoutButton(),
            ),
          ],
        ),
      ),
    );
  }

  void enviarDatabase(
      {required BuildContext context,
      required File file,
      required String usuarioId}) async {
    final Size size = MediaQuery.of(context).size;
    final directory = await getApplicationDocumentsDirectory();
    final file = XFile('${directory.path}/$localDatabaseName');
    Share.shareXFiles([file],
        subject: 'Base de datos local #$usuarioId',
        sharePositionOrigin: Rect.fromLTWH(0, 0, size.width, size.height / 2));
  }
}

class _ActualizarArchivoBaseDeDatosButton extends ConsumerWidget {
  const _ActualizarArchivoBaseDeDatosButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<DeleteDatabaseControllerState>(deleteDatabaseControllerProvider,
        (_, state) {
      state.maybeWhen(
          orElse: () {},
          data: (deleted) {
            if (deleted) {
              ref.invalidate(syncNotifierProvider);
              ref.invalidate(appLocalDatabaseProvider);
              ref.invalidate(appRemoteDatabaseProvider);
              isolateRemoteDatabaseConnectPort = null;
              ref.invalidate(syncServiceProvider);

              ref.read(usuarioNotifierProvider.notifier).signOut();
            }
          });
    });
    return ElevatedButton(
      onPressed: () => deleteDatabase(ref),
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

  void deleteDatabase(WidgetRef ref) {
    ref.invalidate(appRemoteDatabaseProvider);

    ref.read(deleteDatabaseControllerProvider.notifier).deleteRemoteDatabase();
  }
}

class _ReemplazarArchivoBaseDeDatosLocalButton extends ConsumerWidget {
  const _ReemplazarArchivoBaseDeDatosLocalButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(deleteLocalDatabaseControllerProvider, (_, state) {
      state.maybeWhen(
          orElse: () {},
          data: (deleted) {
            if (deleted) {
              print('HOLA');
              ref.invalidate(syncNotifierProvider);
              ref.invalidate(appLocalDatabaseProvider);
              isolateLocalDatabaseConnectPort = null;
              ref.invalidate(syncServiceProvider);
              ref.read(usuarioNotifierProvider.notifier).signOut();
            }
          });
    });
    return ElevatedButton(
      onPressed: () => replaceLocalDatabase(context, ref),
      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.red)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.refresh,
            color: Theme.of(context).colorScheme.onError,
          ),
          const SizedBox(width: 5),
          Text(
            S.of(context).settings_reemplazarBaseDeDatosLocal,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onError,
                ),
          ),
        ],
      ),
    );
  }

  void replaceLocalDatabase(BuildContext context, WidgetRef ref) async {
    // final replaceDatabase = await showDialog<bool?>(
    //     context: context,
    //     builder: (context) => const ReplaceDatabaseAlertDialog());

    // if (replaceDatabase != null && replaceDatabase && context.mounted) {
    //   final correctKey = await showDialog<bool?>(
    //     context: context,
    //     builder: (context) => ReplaceDatabaseKeyAlertDialog(),
    //   );

    //   if (correctKey != null && correctKey) {
    ref.invalidate(appLocalDatabaseProvider);

    ref
        .read(deleteLocalDatabaseControllerProvider.notifier)
        .deleteLocalDatabase();
    // }
    //   }
  }
}

class ReplaceDatabaseAlertDialog extends StatelessWidget {
  const ReplaceDatabaseAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(S.of(context).estasSeguroQueQuieresReemplazarLaBaseDeDatos),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(S.of(context).cancelar),
        ),
        const SizedBox(width: 5),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(S.of(context).aceptar),
        ),
      ],
    );
  }
}

class ReplaceDatabaseKeyAlertDialog extends StatelessWidget {
  ReplaceDatabaseKeyAlertDialog({super.key});

  final GlobalKey<FormBuilderState> _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(S.of(context).introduceClaveDeNikel),
      content: FormBuilder(
        key: _formKey,
        child: FormBuilderTextField(
          name: 'clave',
          decoration: InputDecoration(labelText: S.of(context).claveNikel),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.match('N1k3l')
          ]),
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(S.of(context).cancelar),
        ),
        const SizedBox(width: 5),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.saveAndValidate()) {
              Navigator.of(context).pop(true);
            }
          },
          child: Text(S.of(context).aceptar),
        ),
      ],
    );
  }
}

class _EnviarBaseDeDatosLocalButton extends ConsumerWidget {
  const _EnviarBaseDeDatosLocalButton({required this.usuarioId});

  final String usuarioId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => exportDatabaseIntoFile(ref),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.email),
          const SizedBox(width: 5),
          Text(
            S.of(context).settings_enviarBaseDeDatos,
          )
        ],
      ),
    );
  }

  void exportDatabaseIntoFile(WidgetRef ref) {
    ref
        .read(exportDatabaseControllerProvider.notifier)
        .exportDatabaseIntoFile();
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

  void logout(BuildContext context, WidgetRef ref) async {
    await ref.read(usuarioNotifierProvider.notifier).signOut();
  }
}
