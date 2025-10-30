// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_factura_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteFacturaCountControllerHash() =>
    r'09d3279b681170606aa7377d0c7f0c0018efbabc';

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

abstract class _$ClienteFacturaCountController
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final String clienteId;

  FutureOr<int> build(String clienteId);
}

/// See also [ClienteFacturaCountController].
@ProviderFor(ClienteFacturaCountController)
const clienteFacturaCountControllerProvider =
    ClienteFacturaCountControllerFamily();

/// See also [ClienteFacturaCountController].
class ClienteFacturaCountControllerFamily extends Family<AsyncValue<int>> {
  /// See also [ClienteFacturaCountController].
  const ClienteFacturaCountControllerFamily();

  /// See also [ClienteFacturaCountController].
  ClienteFacturaCountControllerProvider call(String clienteId) {
    return ClienteFacturaCountControllerProvider(clienteId);
  }

  @override
  ClienteFacturaCountControllerProvider getProviderOverride(
    covariant ClienteFacturaCountControllerProvider provider,
  ) {
    return call(provider.clienteId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'clienteFacturaCountControllerProvider';
}

/// See also [ClienteFacturaCountController].
class ClienteFacturaCountControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClienteFacturaCountController,
          int
        > {
  /// See also [ClienteFacturaCountController].
  ClienteFacturaCountControllerProvider(String clienteId)
    : this._internal(
        () => ClienteFacturaCountController()..clienteId = clienteId,
        from: clienteFacturaCountControllerProvider,
        name: r'clienteFacturaCountControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$clienteFacturaCountControllerHash,
        dependencies: ClienteFacturaCountControllerFamily._dependencies,
        allTransitiveDependencies:
            ClienteFacturaCountControllerFamily._allTransitiveDependencies,
        clienteId: clienteId,
      );

  ClienteFacturaCountControllerProvider._internal(
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
    covariant ClienteFacturaCountController notifier,
  ) {
    return notifier.build(clienteId);
  }

  @override
  Override overrideWith(ClienteFacturaCountController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClienteFacturaCountControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ClienteFacturaCountController, int>
  createElement() {
    return _ClienteFacturaCountControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteFacturaCountControllerProvider &&
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
mixin ClienteFacturaCountControllerRef
    on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `clienteId` of this provider.
  String get clienteId;
}

class _ClienteFacturaCountControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ClienteFacturaCountController,
          int
        >
    with ClienteFacturaCountControllerRef {
  _ClienteFacturaCountControllerProviderElement(super.provider);

  @override
  String get clienteId =>
      (origin as ClienteFacturaCountControllerProvider).clienteId;
}

String _$clienteFacturaPaginationControllerHash() =>
    r'6bfdd1bf093e0d3a130df326a9335b1b6721c95f';

abstract class _$ClienteFacturaPaginationController
    extends BuildlessAutoDisposeAsyncNotifier<List<ClienteFactura>> {
  late final int page;
  late final String customerId;

  FutureOr<List<ClienteFactura>> build({
    required int page,
    required String customerId,
  });
}

/// See also [ClienteFacturaPaginationController].
@ProviderFor(ClienteFacturaPaginationController)
const clienteFacturaPaginationControllerProvider =
    ClienteFacturaPaginationControllerFamily();

/// See also [ClienteFacturaPaginationController].
class ClienteFacturaPaginationControllerFamily
    extends Family<AsyncValue<List<ClienteFactura>>> {
  /// See also [ClienteFacturaPaginationController].
  const ClienteFacturaPaginationControllerFamily();

  /// See also [ClienteFacturaPaginationController].
  ClienteFacturaPaginationControllerProvider call({
    required int page,
    required String customerId,
  }) {
    return ClienteFacturaPaginationControllerProvider(
      page: page,
      customerId: customerId,
    );
  }

  @override
  ClienteFacturaPaginationControllerProvider getProviderOverride(
    covariant ClienteFacturaPaginationControllerProvider provider,
  ) {
    return call(page: provider.page, customerId: provider.customerId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'clienteFacturaPaginationControllerProvider';
}

/// See also [ClienteFacturaPaginationController].
class ClienteFacturaPaginationControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClienteFacturaPaginationController,
          List<ClienteFactura>
        > {
  /// See also [ClienteFacturaPaginationController].
  ClienteFacturaPaginationControllerProvider({
    required int page,
    required String customerId,
  }) : this._internal(
         () => ClienteFacturaPaginationController()
           ..page = page
           ..customerId = customerId,
         from: clienteFacturaPaginationControllerProvider,
         name: r'clienteFacturaPaginationControllerProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$clienteFacturaPaginationControllerHash,
         dependencies: ClienteFacturaPaginationControllerFamily._dependencies,
         allTransitiveDependencies: ClienteFacturaPaginationControllerFamily
             ._allTransitiveDependencies,
         page: page,
         customerId: customerId,
       );

  ClienteFacturaPaginationControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.customerId,
  }) : super.internal();

  final int page;
  final String customerId;

  @override
  FutureOr<List<ClienteFactura>> runNotifierBuild(
    covariant ClienteFacturaPaginationController notifier,
  ) {
    return notifier.build(page: page, customerId: customerId);
  }

  @override
  Override overrideWith(ClienteFacturaPaginationController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClienteFacturaPaginationControllerProvider._internal(
        () => create()
          ..page = page
          ..customerId = customerId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        customerId: customerId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ClienteFacturaPaginationController,
    List<ClienteFactura>
  >
  createElement() {
    return _ClienteFacturaPaginationControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteFacturaPaginationControllerProvider &&
        other.page == page &&
        other.customerId == customerId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, customerId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ClienteFacturaPaginationControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<ClienteFactura>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `customerId` of this provider.
  String get customerId;
}

class _ClienteFacturaPaginationControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ClienteFacturaPaginationController,
          List<ClienteFactura>
        >
    with ClienteFacturaPaginationControllerRef {
  _ClienteFacturaPaginationControllerProviderElement(super.provider);

  @override
  int get page => (origin as ClienteFacturaPaginationControllerProvider).page;
  @override
  String get customerId =>
      (origin as ClienteFacturaPaginationControllerProvider).customerId;
}

String _$clienteFacturaDocumentControllerHash() =>
    r'965f3863e6b5321f532899e2c12ce5d9518c3620';

abstract class _$ClienteFacturaDocumentController
    extends BuildlessAutoDisposeNotifier<void> {
  late final String facturaId;

  void build({required String facturaId});
}

/// See also [ClienteFacturaDocumentController].
@ProviderFor(ClienteFacturaDocumentController)
const clienteFacturaDocumentControllerProvider =
    ClienteFacturaDocumentControllerFamily();

/// See also [ClienteFacturaDocumentController].
class ClienteFacturaDocumentControllerFamily extends Family<void> {
  /// See also [ClienteFacturaDocumentController].
  const ClienteFacturaDocumentControllerFamily();

  /// See also [ClienteFacturaDocumentController].
  ClienteFacturaDocumentControllerProvider call({required String facturaId}) {
    return ClienteFacturaDocumentControllerProvider(facturaId: facturaId);
  }

  @override
  ClienteFacturaDocumentControllerProvider getProviderOverride(
    covariant ClienteFacturaDocumentControllerProvider provider,
  ) {
    return call(facturaId: provider.facturaId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'clienteFacturaDocumentControllerProvider';
}

/// See also [ClienteFacturaDocumentController].
class ClienteFacturaDocumentControllerProvider
    extends
        AutoDisposeNotifierProviderImpl<
          ClienteFacturaDocumentController,
          void
        > {
  /// See also [ClienteFacturaDocumentController].
  ClienteFacturaDocumentControllerProvider({required String facturaId})
    : this._internal(
        () => ClienteFacturaDocumentController()..facturaId = facturaId,
        from: clienteFacturaDocumentControllerProvider,
        name: r'clienteFacturaDocumentControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$clienteFacturaDocumentControllerHash,
        dependencies: ClienteFacturaDocumentControllerFamily._dependencies,
        allTransitiveDependencies:
            ClienteFacturaDocumentControllerFamily._allTransitiveDependencies,
        facturaId: facturaId,
      );

  ClienteFacturaDocumentControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.facturaId,
  }) : super.internal();

  final String facturaId;

  @override
  void runNotifierBuild(covariant ClienteFacturaDocumentController notifier) {
    return notifier.build(facturaId: facturaId);
  }

  @override
  Override overrideWith(ClienteFacturaDocumentController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClienteFacturaDocumentControllerProvider._internal(
        () => create()..facturaId = facturaId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        facturaId: facturaId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ClienteFacturaDocumentController, void>
  createElement() {
    return _ClienteFacturaDocumentControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteFacturaDocumentControllerProvider &&
        other.facturaId == facturaId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, facturaId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ClienteFacturaDocumentControllerRef
    on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `facturaId` of this provider.
  String get facturaId;
}

class _ClienteFacturaDocumentControllerProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          ClienteFacturaDocumentController,
          void
        >
    with ClienteFacturaDocumentControllerRef {
  _ClienteFacturaDocumentControllerProviderElement(super.provider);

  @override
  String get facturaId =>
      (origin as ClienteFacturaDocumentControllerProvider).facturaId;
}

String _$openFacturaDocumentHash() =>
    r'e7b105d411ab6425ce3e8ed7904699fca7b564ea';

/// See also [OpenFacturaDocument].
@ProviderFor(OpenFacturaDocument)
final openFacturaDocumentProvider =
    AutoDisposeNotifierProvider<
      OpenFacturaDocument,
      MutationState<File?, AdjuntoParam>
    >.internal(
      OpenFacturaDocument.new,
      name: r'openFacturaDocumentProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$openFacturaDocumentHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$OpenFacturaDocument =
    AutoDisposeNotifier<MutationState<File?, AdjuntoParam>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
