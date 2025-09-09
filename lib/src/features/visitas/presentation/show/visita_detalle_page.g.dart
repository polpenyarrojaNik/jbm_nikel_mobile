// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_detalle_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$visitaDetalleControllerHash() =>
    r'1265ee52bba3d1070d15621ace58636a55b80f46';

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

abstract class _$VisitaDetalleController
    extends BuildlessAutoDisposeAsyncNotifier<Visita> {
  late final String id;
  late final bool isLocal;
  late final String? createVisitaFromClienteId;

  FutureOr<Visita> build(
    String id,
    bool isLocal,
    String? createVisitaFromClienteId,
  );
}

/// See also [VisitaDetalleController].
@ProviderFor(VisitaDetalleController)
const visitaDetalleControllerProvider = VisitaDetalleControllerFamily();

/// See also [VisitaDetalleController].
class VisitaDetalleControllerFamily extends Family<AsyncValue<Visita>> {
  /// See also [VisitaDetalleController].
  const VisitaDetalleControllerFamily();

  /// See also [VisitaDetalleController].
  VisitaDetalleControllerProvider call(
    String id,
    bool isLocal,
    String? createVisitaFromClienteId,
  ) {
    return VisitaDetalleControllerProvider(
      id,
      isLocal,
      createVisitaFromClienteId,
    );
  }

  @override
  VisitaDetalleControllerProvider getProviderOverride(
    covariant VisitaDetalleControllerProvider provider,
  ) {
    return call(
      provider.id,
      provider.isLocal,
      provider.createVisitaFromClienteId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'visitaDetalleControllerProvider';
}

/// See also [VisitaDetalleController].
class VisitaDetalleControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<VisitaDetalleController, Visita> {
  /// See also [VisitaDetalleController].
  VisitaDetalleControllerProvider(
    String id,
    bool isLocal,
    String? createVisitaFromClienteId,
  ) : this._internal(
        () => VisitaDetalleController()
          ..id = id
          ..isLocal = isLocal
          ..createVisitaFromClienteId = createVisitaFromClienteId,
        from: visitaDetalleControllerProvider,
        name: r'visitaDetalleControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$visitaDetalleControllerHash,
        dependencies: VisitaDetalleControllerFamily._dependencies,
        allTransitiveDependencies:
            VisitaDetalleControllerFamily._allTransitiveDependencies,
        id: id,
        isLocal: isLocal,
        createVisitaFromClienteId: createVisitaFromClienteId,
      );

  VisitaDetalleControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.isLocal,
    required this.createVisitaFromClienteId,
  }) : super.internal();

  final String id;
  final bool isLocal;
  final String? createVisitaFromClienteId;

  @override
  FutureOr<Visita> runNotifierBuild(
    covariant VisitaDetalleController notifier,
  ) {
    return notifier.build(id, isLocal, createVisitaFromClienteId);
  }

  @override
  Override overrideWith(VisitaDetalleController Function() create) {
    return ProviderOverride(
      origin: this,
      override: VisitaDetalleControllerProvider._internal(
        () => create()
          ..id = id
          ..isLocal = isLocal
          ..createVisitaFromClienteId = createVisitaFromClienteId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        isLocal: isLocal,
        createVisitaFromClienteId: createVisitaFromClienteId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<VisitaDetalleController, Visita>
  createElement() {
    return _VisitaDetalleControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VisitaDetalleControllerProvider &&
        other.id == id &&
        other.isLocal == isLocal &&
        other.createVisitaFromClienteId == createVisitaFromClienteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, isLocal.hashCode);
    hash = _SystemHash.combine(hash, createVisitaFromClienteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin VisitaDetalleControllerRef
    on AutoDisposeAsyncNotifierProviderRef<Visita> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `isLocal` of this provider.
  bool get isLocal;

  /// The parameter `createVisitaFromClienteId` of this provider.
  String? get createVisitaFromClienteId;
}

class _VisitaDetalleControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<VisitaDetalleController, Visita>
    with VisitaDetalleControllerRef {
  _VisitaDetalleControllerProviderElement(super.provider);

  @override
  String get id => (origin as VisitaDetalleControllerProvider).id;
  @override
  bool get isLocal => (origin as VisitaDetalleControllerProvider).isLocal;
  @override
  String? get createVisitaFromClienteId =>
      (origin as VisitaDetalleControllerProvider).createVisitaFromClienteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
