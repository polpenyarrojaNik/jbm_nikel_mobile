// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_ultimos_precios_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteUltimosPreciosIndexScreenControllerHash() =>
    r'd4a434dd16e5cf812fe9e7996144a24e747b2558';

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

abstract class _$ClienteUltimosPreciosIndexScreenController
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final String clienteId;

  FutureOr<int> build({required String clienteId});
}

/// See also [ClienteUltimosPreciosIndexScreenController].
@ProviderFor(ClienteUltimosPreciosIndexScreenController)
const clienteUltimosPreciosIndexScreenControllerProvider =
    ClienteUltimosPreciosIndexScreenControllerFamily();

/// See also [ClienteUltimosPreciosIndexScreenController].
class ClienteUltimosPreciosIndexScreenControllerFamily
    extends Family<AsyncValue<int>> {
  /// See also [ClienteUltimosPreciosIndexScreenController].
  const ClienteUltimosPreciosIndexScreenControllerFamily();

  /// See also [ClienteUltimosPreciosIndexScreenController].
  ClienteUltimosPreciosIndexScreenControllerProvider call({
    required String clienteId,
  }) {
    return ClienteUltimosPreciosIndexScreenControllerProvider(
      clienteId: clienteId,
    );
  }

  @override
  ClienteUltimosPreciosIndexScreenControllerProvider getProviderOverride(
    covariant ClienteUltimosPreciosIndexScreenControllerProvider provider,
  ) {
    return call(clienteId: provider.clienteId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'clienteUltimosPreciosIndexScreenControllerProvider';
}

/// See also [ClienteUltimosPreciosIndexScreenController].
class ClienteUltimosPreciosIndexScreenControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClienteUltimosPreciosIndexScreenController,
          int
        > {
  /// See also [ClienteUltimosPreciosIndexScreenController].
  ClienteUltimosPreciosIndexScreenControllerProvider({
    required String clienteId,
  }) : this._internal(
         () =>
             ClienteUltimosPreciosIndexScreenController()
               ..clienteId = clienteId,
         from: clienteUltimosPreciosIndexScreenControllerProvider,
         name: r'clienteUltimosPreciosIndexScreenControllerProvider',
         debugGetCreateSourceHash:
             const bool.fromEnvironment('dart.vm.product')
                 ? null
                 : _$clienteUltimosPreciosIndexScreenControllerHash,
         dependencies:
             ClienteUltimosPreciosIndexScreenControllerFamily._dependencies,
         allTransitiveDependencies:
             ClienteUltimosPreciosIndexScreenControllerFamily
                 ._allTransitiveDependencies,
         clienteId: clienteId,
       );

  ClienteUltimosPreciosIndexScreenControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.clienteId,
  }) : super.internal();

  final String clienteId;

  @override
  FutureOr<int> runNotifierBuild(
    covariant ClienteUltimosPreciosIndexScreenController notifier,
  ) {
    return notifier.build(clienteId: clienteId);
  }

  @override
  Override overrideWith(
    ClienteUltimosPreciosIndexScreenController Function() create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ClienteUltimosPreciosIndexScreenControllerProvider._internal(
        () => create()..clienteId = clienteId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        clienteId: clienteId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ClienteUltimosPreciosIndexScreenController,
    int
  >
  createElement() {
    return _ClienteUltimosPreciosIndexScreenControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteUltimosPreciosIndexScreenControllerProvider &&
        other.clienteId == clienteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ClienteUltimosPreciosIndexScreenControllerRef
    on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `clienteId` of this provider.
  String get clienteId;
}

class _ClienteUltimosPreciosIndexScreenControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ClienteUltimosPreciosIndexScreenController,
          int
        >
    with ClienteUltimosPreciosIndexScreenControllerRef {
  _ClienteUltimosPreciosIndexScreenControllerProviderElement(super.provider);

  @override
  String get clienteId =>
      (origin as ClienteUltimosPreciosIndexScreenControllerProvider).clienteId;
}

String _$clienteUltimosPreciosIndexScreenPaginatedControllerHash() =>
    r'4ce9f71fba12e87c2ca23acd15ed7c7aecf65dd0';

abstract class _$ClienteUltimosPreciosIndexScreenPaginatedController
    extends
        BuildlessAutoDisposeAsyncNotifier<List<EstadisticasUltimosPrecios>> {
  late final int page;
  late final String clienteId;

  FutureOr<List<EstadisticasUltimosPrecios>> build({
    required int page,
    required String clienteId,
  });
}

/// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
@ProviderFor(ClienteUltimosPreciosIndexScreenPaginatedController)
const clienteUltimosPreciosIndexScreenPaginatedControllerProvider =
    ClienteUltimosPreciosIndexScreenPaginatedControllerFamily();

/// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
class ClienteUltimosPreciosIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<EstadisticasUltimosPrecios>>> {
  /// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
  const ClienteUltimosPreciosIndexScreenPaginatedControllerFamily();

  /// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
  ClienteUltimosPreciosIndexScreenPaginatedControllerProvider call({
    required int page,
    required String clienteId,
  }) {
    return ClienteUltimosPreciosIndexScreenPaginatedControllerProvider(
      page: page,
      clienteId: clienteId,
    );
  }

  @override
  ClienteUltimosPreciosIndexScreenPaginatedControllerProvider
  getProviderOverride(
    covariant ClienteUltimosPreciosIndexScreenPaginatedControllerProvider
    provider,
  ) {
    return call(page: provider.page, clienteId: provider.clienteId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name =>
      r'clienteUltimosPreciosIndexScreenPaginatedControllerProvider';
}

/// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
class ClienteUltimosPreciosIndexScreenPaginatedControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClienteUltimosPreciosIndexScreenPaginatedController,
          List<EstadisticasUltimosPrecios>
        > {
  /// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
  ClienteUltimosPreciosIndexScreenPaginatedControllerProvider({
    required int page,
    required String clienteId,
  }) : this._internal(
         () =>
             ClienteUltimosPreciosIndexScreenPaginatedController()
               ..page = page
               ..clienteId = clienteId,
         from: clienteUltimosPreciosIndexScreenPaginatedControllerProvider,
         name: r'clienteUltimosPreciosIndexScreenPaginatedControllerProvider',
         debugGetCreateSourceHash:
             const bool.fromEnvironment('dart.vm.product')
                 ? null
                 : _$clienteUltimosPreciosIndexScreenPaginatedControllerHash,
         dependencies:
             ClienteUltimosPreciosIndexScreenPaginatedControllerFamily
                 ._dependencies,
         allTransitiveDependencies:
             ClienteUltimosPreciosIndexScreenPaginatedControllerFamily
                 ._allTransitiveDependencies,
         page: page,
         clienteId: clienteId,
       );

  ClienteUltimosPreciosIndexScreenPaginatedControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.clienteId,
  }) : super.internal();

  final int page;
  final String clienteId;

  @override
  FutureOr<List<EstadisticasUltimosPrecios>> runNotifierBuild(
    covariant ClienteUltimosPreciosIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(page: page, clienteId: clienteId);
  }

  @override
  Override overrideWith(
    ClienteUltimosPreciosIndexScreenPaginatedController Function() create,
  ) {
    return ProviderOverride(
      origin: this,
      override:
          ClienteUltimosPreciosIndexScreenPaginatedControllerProvider._internal(
            () =>
                create()
                  ..page = page
                  ..clienteId = clienteId,
            from: from,
            name: null,
            dependencies: null,
            allTransitiveDependencies: null,
            debugGetCreateSourceHash: null,
            page: page,
            clienteId: clienteId,
          ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ClienteUltimosPreciosIndexScreenPaginatedController,
    List<EstadisticasUltimosPrecios>
  >
  createElement() {
    return _ClienteUltimosPreciosIndexScreenPaginatedControllerProviderElement(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return other
            is ClienteUltimosPreciosIndexScreenPaginatedControllerProvider &&
        other.page == page &&
        other.clienteId == clienteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, clienteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ClienteUltimosPreciosIndexScreenPaginatedControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<EstadisticasUltimosPrecios>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `clienteId` of this provider.
  String get clienteId;
}

class _ClienteUltimosPreciosIndexScreenPaginatedControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ClienteUltimosPreciosIndexScreenPaginatedController,
          List<EstadisticasUltimosPrecios>
        >
    with ClienteUltimosPreciosIndexScreenPaginatedControllerRef {
  _ClienteUltimosPreciosIndexScreenPaginatedControllerProviderElement(
    super.provider,
  );

  @override
  int get page =>
      (origin as ClienteUltimosPreciosIndexScreenPaginatedControllerProvider)
          .page;
  @override
  String get clienteId =>
      (origin as ClienteUltimosPreciosIndexScreenPaginatedControllerProvider)
          .clienteId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
