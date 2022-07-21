import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/sync/infrastructure/sync_repository.dart';

import '../../core/domain/jbm_mobile_failure.dart';

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
    JbmMobileFailure failure,
  ) = _LoadFailure;
}

class SyncPageNotifier extends StateNotifier<SyncPageState> {
  final SyncRepository syncRepository;
  SyncPageNotifier(this.syncRepository) : super(const SyncPageState.initial());

  Future<void> syncValuesInLocalDB() async {
    state = const SyncPageState.loadInProgress();

    final syncAllSalesOrderFold = await syncRepository.syncAllSalesOrder();

    state = syncAllSalesOrderFold.fold((l) => SyncPageState.loadFailure(l),
        (r) => const SyncPageState.syncSuccess());
  }
}
