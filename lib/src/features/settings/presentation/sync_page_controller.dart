import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
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
      // await syncRepository.syncAllSalesOrder();
      await syncRepository.syncAllSalesOrderStatus();
      await syncRepository.syncAllCustomer();
      await syncRepository.syncAllCustomerUser();
      await syncRepository.syncAllCustomerAddress();
      await syncRepository.syncAllCustomerContact();
      await syncRepository.syncAllCustomerDiscount();
      await syncRepository.syncAllCustomerNetPrice();
      await syncRepository.syncAllCustomerNetGroup();
      await syncRepository.syncAllCustomerPendingPayment();
      await syncRepository.syncAllCustomerRappels();
      await syncRepository.syncAllVisit();
      await syncRepository.syncAllCountry();
      await syncRepository.syncAllDivisa();
      await syncRepository.syncAllCollectionTerm();
      await syncRepository.syncAllCollectionMethods();
      await syncRepository.syncAllFamily();
      await syncRepository.syncAllSubfamily();

      state = const SyncPageState.syncSuccess();
    } on AppException catch (e) {
      state = SyncPageState.loadFailure(e);
    } catch (e) {
      rethrow;
    }
  }
}
