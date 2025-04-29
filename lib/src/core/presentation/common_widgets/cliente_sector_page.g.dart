// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_sector_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteSectorPageControllerHash() =>
    r'2cfc249582b3f8da5bc4abc71cef10554e1145b7';

/// See also [ClienteSectorPageController].
@ProviderFor(ClienteSectorPageController)
final clienteSectorPageControllerProvider = AutoDisposeAsyncNotifierProvider<
  ClienteSectorPageController,
  List<Sector>
>.internal(
  ClienteSectorPageController.new,
  name: r'clienteSectorPageControllerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$clienteSectorPageControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClienteSectorPageController = AutoDisposeAsyncNotifier<List<Sector>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

// **************************************************************************
// RiverpodMutationsGenerator
// **************************************************************************

extension ClienteSectorPageControllerMutationExtension
    on
        AutoDisposeAsyncNotifierProvider<
          ClienteSectorPageController,
          List<Sector>
        > {
  Refreshable<UpdateClienteSectorMutation> get updateClienteSector =>
      _updateClienteSectorProvider;
}

final _updateClienteSectorProvider = Provider.autoDispose((ref) {
  final notifier = ref.watch(clienteSectorPageControllerProvider.notifier);
  return UpdateClienteSectorMutation(
    (newState) => ref.state = newState,
    notifier.updateClienteSector,
  );
}, dependencies: [clienteSectorPageControllerProvider]);

typedef UpdateClienteSectorSignature =
    Future<ClienteImp> Function(ClienteImp clienteImp);
typedef UpdateClienteSectorStateSetter =
    void Function(UpdateClienteSectorMutation newState);

sealed class UpdateClienteSectorMutation
    with AsyncMutation, MutationResult<ClienteImp> {
  factory UpdateClienteSectorMutation(
    UpdateClienteSectorStateSetter updateState,
    UpdateClienteSectorSignature fn,
  ) = UpdateClienteSectorMutationIdle._;

  UpdateClienteSectorMutation._(this._updateState, this._fn);

  final UpdateClienteSectorStateSetter _updateState;
  final UpdateClienteSectorSignature _fn;

  Object? get error;
  StackTrace? get stackTrace;

  Future<void> call(ClienteImp clienteImp) async {
    try {
      _updateState(UpdateClienteSectorMutationLoading.from(this));
      final res = await _fn(clienteImp);
      _updateState(UpdateClienteSectorMutationSuccess.from(this, res));
    } catch (e, s) {
      _updateState(
        UpdateClienteSectorMutationFailure.from(this, error: e, stackTrace: s),
      );
    }
  }
}

final class UpdateClienteSectorMutationIdle extends UpdateClienteSectorMutation
    with MutationIdle {
  UpdateClienteSectorMutationIdle._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory UpdateClienteSectorMutationIdle.from(
    UpdateClienteSectorMutation other,
  ) => UpdateClienteSectorMutationIdle._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
    result: other.result,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}

final class UpdateClienteSectorMutationLoading
    extends UpdateClienteSectorMutation
    with MutationLoading {
  UpdateClienteSectorMutationLoading._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory UpdateClienteSectorMutationLoading.from(
    UpdateClienteSectorMutation other,
  ) => UpdateClienteSectorMutationLoading._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
    result: other.result,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}

final class UpdateClienteSectorMutationSuccess
    extends UpdateClienteSectorMutation
    with MutationSuccessResult<ClienteImp> {
  UpdateClienteSectorMutationSuccess._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    required this.result,
  }) : super._();

  factory UpdateClienteSectorMutationSuccess.from(
    UpdateClienteSectorMutation other,
    ClienteImp result,
  ) => UpdateClienteSectorMutationSuccess._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
    result: result,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  final ClienteImp result;
}

final class UpdateClienteSectorMutationFailure
    extends UpdateClienteSectorMutation
    with MutationFailure {
  UpdateClienteSectorMutationFailure._(
    super._updateState,
    super._fn, {
    required this.error,
    required this.stackTrace,
    this.result,
  }) : super._();

  factory UpdateClienteSectorMutationFailure.from(
    UpdateClienteSectorMutation other, {
    required Object error,
    required StackTrace stackTrace,
  }) => UpdateClienteSectorMutationFailure._(
    other._updateState,
    other._fn,
    error: error,
    stackTrace: stackTrace,
    result: other.result,
  );

  @override
  final Object error;

  @override
  final StackTrace stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}
