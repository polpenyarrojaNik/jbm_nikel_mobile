import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/sync/presentation/sync_page_controller.dart';

class SyncPage extends ConsumerStatefulWidget {
  const SyncPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SyncPage> createState() => _SyncPageState();
}

class _SyncPageState extends ConsumerState<SyncPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
        () => ref.read(syncPageStateNotifier.notifier).syncValuesInLocalDB());
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(syncPageStateNotifier);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Sync Page'),
        ),
        body: Center(
            child: state.when(
                initial: () => Container(),
                loadInProgress: () => const CircularProgressIndicator(),
                syncSuccess: () => const Text('Sync finished successfully'),
                loadFailure: (l) => Text(l.when(
                    api: (errorCode, e) => '$errorCode: $e',
                    db: (e) => '$e',
                    local: (e) => '$e')))));
  }
}
