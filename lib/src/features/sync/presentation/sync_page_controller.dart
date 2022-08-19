import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../infrastructure/sync_repository.dart';

part 'sync_page_controller.freezed.dart';

final syncPageStateNotifier =
    StateNotifierProvider.autoDispose<SyncPageNotifier, SyncPageState>(
  (ref) => SyncPageNotifier(
    ref.watch(syncRepositoryProvider),
  ),
);

@freezed
class SyncPageState with _$SyncPageState {
  const SyncPageState._();
  const factory SyncPageState.initial() = _Initial;
  const factory SyncPageState.loadInProgress() = _LoadInProgress;
  const factory SyncPageState.syncSuccess() = _SyncSuccess;
  const factory SyncPageState.loadFailure(
    Object error,
  ) = _LoadFailure;
}

class SyncPageNotifier extends StateNotifier<SyncPageState> {
  final SyncRepository syncRepository;
  SyncPageNotifier(this.syncRepository) : super(const SyncPageState.initial());

  Future<void> syncValuesInLocalDB() async {
    state = const SyncPageState.loadInProgress();
    try {
      await syncRepository.syncAllSalesOrder();
      state = const SyncPageState.syncSuccess();
    } catch (e) {
      state = SyncPageState.loadFailure(e);
    }
  }
}
