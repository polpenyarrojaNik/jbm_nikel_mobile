// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_edit_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$visitEditPageControllerHash() =>
    r'ea44a540ebad8d7acdef6ac8d4945c22bbc3f516';

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
  late final bool isLocal;
  late final bool isNew;

  FutureOr<VisitEditScreenData> build(
    String visitaId,
    bool isLocal,
    bool isNew,
  );
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
  VisitEditPageControllerProvider call(
    String visitaId,
    bool isLocal,
    bool isNew,
  ) {
    return VisitEditPageControllerProvider(visitaId, isLocal, isNew);
  }

  @override
  VisitEditPageControllerProvider getProviderOverride(
    covariant VisitEditPageControllerProvider provider,
  ) {
    return call(provider.visitaId, provider.isLocal, provider.isNew);
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
  VisitEditPageControllerProvider(String visitaId, bool isLocal, bool isNew)
    : this._internal(
        () =>
            VisitEditPageController()
              ..visitaId = visitaId
              ..isLocal = isLocal
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
        isLocal: isLocal,
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
    required this.isLocal,
    required this.isNew,
  }) : super.internal();

  final String visitaId;
  final bool isLocal;
  final bool isNew;

  @override
  FutureOr<VisitEditScreenData> runNotifierBuild(
    covariant VisitEditPageController notifier,
  ) {
    return notifier.build(visitaId, isLocal, isNew);
  }

  @override
  Override overrideWith(VisitEditPageController Function() create) {
    return ProviderOverride(
      origin: this,
      override: VisitEditPageControllerProvider._internal(
        () =>
            create()
              ..visitaId = visitaId
              ..isLocal = isLocal
              ..isNew = isNew,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        visitaId: visitaId,
        isLocal: isLocal,
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
        other.isLocal == isLocal &&
        other.isNew == isNew;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, visitaId.hashCode);
    hash = _SystemHash.combine(hash, isLocal.hashCode);
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

  /// The parameter `isLocal` of this provider.
  bool get isLocal;

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
  bool get isLocal => (origin as VisitEditPageControllerProvider).isLocal;
  @override
  bool get isNew => (origin as VisitEditPageControllerProvider).isNew;
}

String _$saveFormHash() => r'483005a18d08ef5d59496016f8eb4d826c3e6315';

abstract class _$SaveForm
    extends
        BuildlessAutoDisposeNotifier<
          MutationState<Either<AppException, Visita>, Visita>
        > {
  late final String visitaId;
  late final bool isLocal;
  late final bool isNew;

  MutationState<Either<AppException, Visita>, Visita> build(
    String visitaId,
    bool isLocal,
    bool isNew,
  );
}

/// See also [SaveForm].
@ProviderFor(SaveForm)
const saveFormProvider = SaveFormFamily();

/// See also [SaveForm].
class SaveFormFamily
    extends Family<MutationState<Either<AppException, Visita>, Visita>> {
  /// See also [SaveForm].
  const SaveFormFamily();

  /// See also [SaveForm].
  SaveFormProvider call(String visitaId, bool isLocal, bool isNew) {
    return SaveFormProvider(visitaId, isLocal, isNew);
  }

  @override
  SaveFormProvider getProviderOverride(covariant SaveFormProvider provider) {
    return call(provider.visitaId, provider.isLocal, provider.isNew);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'saveFormProvider';
}

/// See also [SaveForm].
class SaveFormProvider
    extends
        AutoDisposeNotifierProviderImpl<
          SaveForm,
          MutationState<Either<AppException, Visita>, Visita>
        > {
  /// See also [SaveForm].
  SaveFormProvider(String visitaId, bool isLocal, bool isNew)
    : this._internal(
        () =>
            SaveForm()
              ..visitaId = visitaId
              ..isLocal = isLocal
              ..isNew = isNew,
        from: saveFormProvider,
        name: r'saveFormProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$saveFormHash,
        dependencies: SaveFormFamily._dependencies,
        allTransitiveDependencies: SaveFormFamily._allTransitiveDependencies,
        visitaId: visitaId,
        isLocal: isLocal,
        isNew: isNew,
      );

  SaveFormProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.visitaId,
    required this.isLocal,
    required this.isNew,
  }) : super.internal();

  final String visitaId;
  final bool isLocal;
  final bool isNew;

  @override
  MutationState<Either<AppException, Visita>, Visita> runNotifierBuild(
    covariant SaveForm notifier,
  ) {
    return notifier.build(visitaId, isLocal, isNew);
  }

  @override
  Override overrideWith(SaveForm Function() create) {
    return ProviderOverride(
      origin: this,
      override: SaveFormProvider._internal(
        () =>
            create()
              ..visitaId = visitaId
              ..isLocal = isLocal
              ..isNew = isNew,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        visitaId: visitaId,
        isLocal: isLocal,
        isNew: isNew,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<
    SaveForm,
    MutationState<Either<AppException, Visita>, Visita>
  >
  createElement() {
    return _SaveFormProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveFormProvider &&
        other.visitaId == visitaId &&
        other.isLocal == isLocal &&
        other.isNew == isNew;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, visitaId.hashCode);
    hash = _SystemHash.combine(hash, isLocal.hashCode);
    hash = _SystemHash.combine(hash, isNew.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SaveFormRef
    on
        AutoDisposeNotifierProviderRef<
          MutationState<Either<AppException, Visita>, Visita>
        > {
  /// The parameter `visitaId` of this provider.
  String get visitaId;

  /// The parameter `isLocal` of this provider.
  bool get isLocal;

  /// The parameter `isNew` of this provider.
  bool get isNew;
}

class _SaveFormProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          SaveForm,
          MutationState<Either<AppException, Visita>, Visita>
        >
    with SaveFormRef {
  _SaveFormProviderElement(super.provider);

  @override
  String get visitaId => (origin as SaveFormProvider).visitaId;
  @override
  bool get isLocal => (origin as SaveFormProvider).isLocal;
  @override
  bool get isNew => (origin as SaveFormProvider).isNew;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
