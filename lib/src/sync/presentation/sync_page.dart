import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/app_drawer.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/toasts.dart';
import 'package:jbm_nikel_mobile/src/sync/presentation/sync_page_controller.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<SyncPageState>(
      syncPageStateNotifier,
      (_, state) => state.maybeWhen(
        orElse: () => null,
        syncSuccess: () =>
            showToast('Sincronización realizada con éxito', context),
        loadFailure: (failure) => showToast(
          failure.when(
            api: (errorCode, e) => 'Error en la sincronización: $errorCode: $e',
            db: (e) => 'Error en la sincronización: $e',
            local: (e) => 'Error en la sincronización: $e',
          ),
          context,
        ),
      ),
    );

    final state = ref.watch(syncPageStateNotifier);
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Settigns'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => state.maybeWhen(
            orElse: () => syncLocalDB(ref),
            loadInProgress: () => null,
          ),
          child: state.maybeWhen(
            orElse: () => const Text('Sync Local DB'),
            loadInProgress: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }

  Future<void> syncLocalDB(WidgetRef ref) =>
      ref.read(syncPageStateNotifier.notifier).syncValuesInLocalDB();
}
