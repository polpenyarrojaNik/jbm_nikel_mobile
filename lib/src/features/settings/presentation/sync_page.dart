import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/exceptions/app_exception.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/common_widgets/app_drawer.dart';
import 'package:jbm_nikel_mobile/src/core/presentation/toasts.dart';
import 'package:jbm_nikel_mobile/src/features/auth/presentation/auth_controller.dart';
import 'package:jbm_nikel_mobile/src/features/settings/presentation/sync_page_controller.dart';

import '../../../core/presentation/common_widgets/progress_indicator_widget.dart';

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
        loadFailure: (error) => showToast(
          (error is AppException) ? error.details.message : error.toString(),
          context,
        ),
      ),
    );

    final state = ref.watch(syncPageStateNotifier);
    return Scaffold(
      drawer: const AppDrawer(),
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(
              onPressed: () =>
                  ref.read(authControllerProvider.notifier).logout(),
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: () => state.maybeWhen(
            orElse: () => syncLocalDB(ref),
            loadInProgress: () => null,
          ),
          child: state.maybeWhen(
            orElse: () => const Text('Sync Local DB'),
            loadInProgress: () => const ProgressIndicatorWidget(),
          ),
        ),
      ),
    );
  }

  Future<void> syncLocalDB(WidgetRef ref) =>
      ref.read(syncPageStateNotifier.notifier).syncValuesInLocalDB();
}
