// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_edit_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$visitEditPageControllerHash() =>
    r'cd9dbb1244e44d9fbf2b47c809b0fd1ebf453951';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$VisitEditPageController
    extends BuildlessAutoDisposeAsyncNotifier<VisitEditScreenData> {
  late final String visitaId;
  late final bool isNew;

  FutureOr<VisitEditScreenData> build(String visitaId, bool isNew);
}

/// See also [VisitEditPageController].
@ProviderFor(VisitEditPageController)
const visitEditPageControllerProvider = VisitEditPageControllerFamily();

/// See also [VisitEditPageController].
class VisitEditPageControllerFamily
    extends Family<AsyncValue<VisitEditScreenData>> {
  /// See also [VisitEditPageController].
  const VisitEditPageControllerFamily();

  /// See also [VisitEditPageController].
  VisitEditPageControllerProvider call(String visitaId, bool isNew) {
    return VisitEditPageControllerProvider(visitaId, isNew);
  }

  @override
  VisitEditPageControllerProvider getProviderOverride(
    covariant VisitEditPageControllerProvider provider,
  ) {
    return call(provider.visitaId, provider.isNew);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'visitEditPageControllerProvider';
}

/// See also [VisitEditPageController].
class VisitEditPageControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          VisitEditPageController,
          VisitEditScreenData
        > {
  /// See also [VisitEditPageController].
  VisitEditPageControllerProvider(String visitaId, bool isNew)
    : this._internal(
        () =>
            VisitEditPageController()
              ..visitaId = visitaId
              ..isNew = isNew,
        from: visitEditPageControllerProvider,
        name: r'visitEditPageControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$visitEditPageControllerHash,
        dependencies: VisitEditPageControllerFamily._dependencies,
        allTransitiveDependencies:
            VisitEditPageControllerFamily._allTransitiveDependencies,
        visitaId: visitaId,
        isNew: isNew,
      );

  VisitEditPageControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.visitaId,
    required this.isNew,
  }) : super.internal();

  final String visitaId;
  final bool isNew;

  @override
  FutureOr<VisitEditScreenData> runNotifierBuild(
    covariant VisitEditPageController notifier,
  ) {
    return notifier.build(visitaId, isNew);
  }

  @override
  Override overrideWith(VisitEditPageController Function() create) {
    return ProviderOverride(
      origin: this,
      override: VisitEditPageControllerProvider._internal(
        () =>
            create()
              ..visitaId = visitaId
              ..isNew = isNew,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        visitaId: visitaId,
        isNew: isNew,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    VisitEditPageController,
    VisitEditScreenData
  >
  createElement() {
    return _VisitEditPageControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VisitEditPageControllerProvider &&
        other.visitaId == visitaId &&
        other.isNew == isNew;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, visitaId.hashCode);
    hash = _SystemHash.combine(hash, isNew.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin VisitEditPageControllerRef
    on AutoDisposeAsyncNotifierProviderRef<VisitEditScreenData> {
  /// The parameter `visitaId` of this provider.
  String get visitaId;

  /// The parameter `isNew` of this provider.
  bool get isNew;
}

class _VisitEditPageControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          VisitEditPageController,
          VisitEditScreenData
        >
    with VisitEditPageControllerRef {
  _VisitEditPageControllerProviderElement(super.provider);

  @override
  String get visitaId => (origin as VisitEditPageControllerProvider).visitaId;
  @override
  bool get isNew => (origin as VisitEditPageControllerProvider).isNew;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

// **************************************************************************
// RiverpodMutationsGenerator
// **************************************************************************

typedef VisitEditPageControllerFamilyParams = (String visitaId, bool isNew);

extension VisitEditPageControllerMutationExtension
    on VisitEditPageControllerProvider {
  VisitEditPageControllerFamilyParams get _params => (
    this.visitaId,
    this.isNew,
  );

  Refreshable<SaveFormMutation> get saveForm => _saveFormProvider(_params);
}

// Could have extras in the future when @mutationKey gets added. for now identical to the class one.
typedef _SaveFormFamilyParameters = (String visitaId, bool isNew);

final _saveFormProvider = Provider.autoDispose.family((
  ref,
  _SaveFormFamilyParameters _params,
) {
  final notifier = ref.watch(
    visitEditPageControllerProvider(_params.$1, _params.$2).notifier,
  );
  return SaveFormMutation(
    (newState) => ref.state = newState,
    notifier.saveForm,
  );
}, dependencies: [visitEditPageControllerProvider]);

typedef SaveFormSignature = Future<Visita> Function(Visita vistia);
typedef SaveFormStateSetter = void Function(SaveFormMutation newState);

sealed class SaveFormMutation with AsyncMutation, MutationResult<Visita> {
  factory SaveFormMutation(
    SaveFormStateSetter updateState,
    SaveFormSignature fn,
  ) = SaveFormMutationIdle._;

  SaveFormMutation._(this._updateState, this._fn);

  final SaveFormStateSetter _updateState;
  final SaveFormSignature _fn;

  Object? get error;
  StackTrace? get stackTrace;

  Future<void> call(Visita vistia) async {
    try {
      _updateState(SaveFormMutationLoading.from(this));
      final res = await _fn(vistia);
      _updateState(SaveFormMutationSuccess.from(this, res));
    } catch (e, s) {
      _updateState(SaveFormMutationFailure.from(this, error: e, stackTrace: s));
    }
  }
}

final class SaveFormMutationIdle extends SaveFormMutation with MutationIdle {
  SaveFormMutationIdle._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory SaveFormMutationIdle.from(SaveFormMutation other) =>
      SaveFormMutationIdle._(
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

final class SaveFormMutationLoading extends SaveFormMutation
    with MutationLoading {
  SaveFormMutationLoading._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory SaveFormMutationLoading.from(SaveFormMutation other) =>
      SaveFormMutationLoading._(
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

final class SaveFormMutationSuccess extends SaveFormMutation
    with MutationSuccessResult<Visita> {
  SaveFormMutationSuccess._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    required this.result,
  }) : super._();

  factory SaveFormMutationSuccess.from(SaveFormMutation other, Visita result) =>
      SaveFormMutationSuccess._(
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
  final Visita result;
}

final class SaveFormMutationFailure extends SaveFormMutation
    with MutationFailure {
  SaveFormMutationFailure._(
    super._updateState,
    super._fn, {
    required this.error,
    required this.stackTrace,
    this.result,
  }) : super._();

  factory SaveFormMutationFailure.from(
    SaveFormMutation other, {
    required Object error,
    required StackTrace stackTrace,
  }) => SaveFormMutationFailure._(
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
