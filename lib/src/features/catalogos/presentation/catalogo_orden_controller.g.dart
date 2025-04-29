// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_orden_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$catalogoOrdenControllerHash() =>
    r'8e0ab0d67036765d755a96b7dde17f7973f6b0b9';

/// See also [CatalogoOrdenController].
@ProviderFor(CatalogoOrdenController)
final catalogoOrdenControllerProvider =
    AutoDisposeNotifierProvider<CatalogoOrdenController, void>.internal(
      CatalogoOrdenController.new,
      name: r'catalogoOrdenControllerProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$catalogoOrdenControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CatalogoOrdenController = AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

// **************************************************************************
// RiverpodMutationsGenerator
// **************************************************************************

extension CatalogoOrdenControllerMutationExtension
    on AutoDisposeNotifierProvider<CatalogoOrdenController, void> {
  Refreshable<SaveCatalogoAbiertoMutation> get saveCatalogoAbierto =>
      _saveCatalogoAbiertoProvider;
}

final _saveCatalogoAbiertoProvider = Provider.autoDispose((ref) {
  final notifier = ref.watch(catalogoOrdenControllerProvider.notifier);
  return SaveCatalogoAbiertoMutation(
    (newState) => ref.state = newState,
    notifier.saveCatalogoAbierto,
  );
}, dependencies: [catalogoOrdenControllerProvider]);

typedef SaveCatalogoAbiertoSignature = Future<void> Function(int catalogoId);
typedef SaveCatalogoAbiertoStateSetter =
    void Function(SaveCatalogoAbiertoMutation newState);

sealed class SaveCatalogoAbiertoMutation with AsyncMutation {
  factory SaveCatalogoAbiertoMutation(
    SaveCatalogoAbiertoStateSetter updateState,
    SaveCatalogoAbiertoSignature fn,
  ) = SaveCatalogoAbiertoMutationIdle._;

  SaveCatalogoAbiertoMutation._(this._updateState, this._fn);

  final SaveCatalogoAbiertoStateSetter _updateState;
  final SaveCatalogoAbiertoSignature _fn;

  Object? get error;
  StackTrace? get stackTrace;

  Future<void> call(int catalogoId) async {
    try {
      _updateState(SaveCatalogoAbiertoMutationLoading.from(this));
      await _fn(catalogoId);
      _updateState(SaveCatalogoAbiertoMutationSuccess.from(this));
    } catch (e, s) {
      _updateState(
        SaveCatalogoAbiertoMutationFailure.from(this, error: e, stackTrace: s),
      );
    }
  }
}

final class SaveCatalogoAbiertoMutationIdle extends SaveCatalogoAbiertoMutation
    with MutationIdle {
  SaveCatalogoAbiertoMutationIdle._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
  }) : super._();

  factory SaveCatalogoAbiertoMutationIdle.from(
    SaveCatalogoAbiertoMutation other,
  ) => SaveCatalogoAbiertoMutationIdle._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;
}

final class SaveCatalogoAbiertoMutationLoading
    extends SaveCatalogoAbiertoMutation
    with MutationLoading {
  SaveCatalogoAbiertoMutationLoading._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
  }) : super._();

  factory SaveCatalogoAbiertoMutationLoading.from(
    SaveCatalogoAbiertoMutation other,
  ) => SaveCatalogoAbiertoMutationLoading._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;
}

final class SaveCatalogoAbiertoMutationSuccess
    extends SaveCatalogoAbiertoMutation
    with MutationSuccess {
  SaveCatalogoAbiertoMutationSuccess._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
  }) : super._();

  factory SaveCatalogoAbiertoMutationSuccess.from(
    SaveCatalogoAbiertoMutation other,
  ) => SaveCatalogoAbiertoMutationSuccess._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;
}

final class SaveCatalogoAbiertoMutationFailure
    extends SaveCatalogoAbiertoMutation
    with MutationFailure {
  SaveCatalogoAbiertoMutationFailure._(
    super._updateState,
    super._fn, {
    required this.error,
    required this.stackTrace,
  }) : super._();

  factory SaveCatalogoAbiertoMutationFailure.from(
    SaveCatalogoAbiertoMutation other, {
    required Object error,
    required StackTrace stackTrace,
  }) => SaveCatalogoAbiertoMutationFailure._(
    other._updateState,
    other._fn,
    error: error,
    stackTrace: stackTrace,
  );

  @override
  final Object error;

  @override
  final StackTrace stackTrace;
}
