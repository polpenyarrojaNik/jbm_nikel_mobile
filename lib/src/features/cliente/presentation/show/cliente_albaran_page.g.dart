// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_albaran_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteAlbaranCountControllerHash() =>
    r'ab29f96230e56cc02f9070f6907e7263e5fc173c';

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

abstract class _$ClienteAlbaranCountController
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final String clienteId;

  FutureOr<int> build(String clienteId);
}

/// See also [ClienteAlbaranCountController].
@ProviderFor(ClienteAlbaranCountController)
const clienteAlbaranCountControllerProvider =
    ClienteAlbaranCountControllerFamily();

/// See also [ClienteAlbaranCountController].
class ClienteAlbaranCountControllerFamily extends Family<AsyncValue<int>> {
  /// See also [ClienteAlbaranCountController].
  const ClienteAlbaranCountControllerFamily();

  /// See also [ClienteAlbaranCountController].
  ClienteAlbaranCountControllerProvider call(String clienteId) {
    return ClienteAlbaranCountControllerProvider(clienteId);
  }

  @override
  ClienteAlbaranCountControllerProvider getProviderOverride(
    covariant ClienteAlbaranCountControllerProvider provider,
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
  String? get name => r'clienteAlbaranCountControllerProvider';
}

/// See also [ClienteAlbaranCountController].
class ClienteAlbaranCountControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClienteAlbaranCountController,
          int
        > {
  /// See also [ClienteAlbaranCountController].
  ClienteAlbaranCountControllerProvider(String clienteId)
    : this._internal(
        () => ClienteAlbaranCountController()..clienteId = clienteId,
        from: clienteAlbaranCountControllerProvider,
        name: r'clienteAlbaranCountControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$clienteAlbaranCountControllerHash,
        dependencies: ClienteAlbaranCountControllerFamily._dependencies,
        allTransitiveDependencies:
            ClienteAlbaranCountControllerFamily._allTransitiveDependencies,
        clienteId: clienteId,
      );

  ClienteAlbaranCountControllerProvider._internal(
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
    covariant ClienteAlbaranCountController notifier,
  ) {
    return notifier.build(clienteId);
  }

  @override
  Override overrideWith(ClienteAlbaranCountController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClienteAlbaranCountControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ClienteAlbaranCountController, int>
  createElement() {
    return _ClienteAlbaranCountControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteAlbaranCountControllerProvider &&
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
mixin ClienteAlbaranCountControllerRef
    on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `clienteId` of this provider.
  String get clienteId;
}

class _ClienteAlbaranCountControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ClienteAlbaranCountController,
          int
        >
    with ClienteAlbaranCountControllerRef {
  _ClienteAlbaranCountControllerProviderElement(super.provider);

  @override
  String get clienteId =>
      (origin as ClienteAlbaranCountControllerProvider).clienteId;
}

String _$clienteAlbaranPaginationControllerHash() =>
    r'03235fdc6b5214141816e23867a2fe7b869f4baa';

abstract class _$ClienteAlbaranPaginationController
    extends BuildlessAutoDisposeAsyncNotifier<List<ClienteAlbaran>> {
  late final int page;
  late final String customerId;

  FutureOr<List<ClienteAlbaran>> build({
    required int page,
    required String customerId,
  });
}

/// See also [ClienteAlbaranPaginationController].
@ProviderFor(ClienteAlbaranPaginationController)
const clienteAlbaranPaginationControllerProvider =
    ClienteAlbaranPaginationControllerFamily();

/// See also [ClienteAlbaranPaginationController].
class ClienteAlbaranPaginationControllerFamily
    extends Family<AsyncValue<List<ClienteAlbaran>>> {
  /// See also [ClienteAlbaranPaginationController].
  const ClienteAlbaranPaginationControllerFamily();

  /// See also [ClienteAlbaranPaginationController].
  ClienteAlbaranPaginationControllerProvider call({
    required int page,
    required String customerId,
  }) {
    return ClienteAlbaranPaginationControllerProvider(
      page: page,
      customerId: customerId,
    );
  }

  @override
  ClienteAlbaranPaginationControllerProvider getProviderOverride(
    covariant ClienteAlbaranPaginationControllerProvider provider,
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
  String? get name => r'clienteAlbaranPaginationControllerProvider';
}

/// See also [ClienteAlbaranPaginationController].
class ClienteAlbaranPaginationControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClienteAlbaranPaginationController,
          List<ClienteAlbaran>
        > {
  /// See also [ClienteAlbaranPaginationController].
  ClienteAlbaranPaginationControllerProvider({
    required int page,
    required String customerId,
  }) : this._internal(
         () => ClienteAlbaranPaginationController()
           ..page = page
           ..customerId = customerId,
         from: clienteAlbaranPaginationControllerProvider,
         name: r'clienteAlbaranPaginationControllerProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$clienteAlbaranPaginationControllerHash,
         dependencies: ClienteAlbaranPaginationControllerFamily._dependencies,
         allTransitiveDependencies: ClienteAlbaranPaginationControllerFamily
             ._allTransitiveDependencies,
         page: page,
         customerId: customerId,
       );

  ClienteAlbaranPaginationControllerProvider._internal(
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
  FutureOr<List<ClienteAlbaran>> runNotifierBuild(
    covariant ClienteAlbaranPaginationController notifier,
  ) {
    return notifier.build(page: page, customerId: customerId);
  }

  @override
  Override overrideWith(ClienteAlbaranPaginationController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClienteAlbaranPaginationControllerProvider._internal(
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
    ClienteAlbaranPaginationController,
    List<ClienteAlbaran>
  >
  createElement() {
    return _ClienteAlbaranPaginationControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteAlbaranPaginationControllerProvider &&
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
mixin ClienteAlbaranPaginationControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<ClienteAlbaran>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `customerId` of this provider.
  String get customerId;
}

class _ClienteAlbaranPaginationControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ClienteAlbaranPaginationController,
          List<ClienteAlbaran>
        >
    with ClienteAlbaranPaginationControllerRef {
  _ClienteAlbaranPaginationControllerProviderElement(super.provider);

  @override
  int get page => (origin as ClienteAlbaranPaginationControllerProvider).page;
  @override
  String get customerId =>
      (origin as ClienteAlbaranPaginationControllerProvider).customerId;
}

String _$clienteAlbaranDocumentControllerHash() =>
    r'e2d4b949539c4c1a6aa70584c1765d20f47d303a';

abstract class _$ClienteAlbaranDocumentController
    extends BuildlessAutoDisposeNotifier<void> {
  late final String albaranId;

  void build({required String albaranId});
}

/// See also [ClienteAlbaranDocumentController].
@ProviderFor(ClienteAlbaranDocumentController)
const clienteAlbaranDocumentControllerProvider =
    ClienteAlbaranDocumentControllerFamily();

/// See also [ClienteAlbaranDocumentController].
class ClienteAlbaranDocumentControllerFamily extends Family<void> {
  /// See also [ClienteAlbaranDocumentController].
  const ClienteAlbaranDocumentControllerFamily();

  /// See also [ClienteAlbaranDocumentController].
  ClienteAlbaranDocumentControllerProvider call({required String albaranId}) {
    return ClienteAlbaranDocumentControllerProvider(albaranId: albaranId);
  }

  @override
  ClienteAlbaranDocumentControllerProvider getProviderOverride(
    covariant ClienteAlbaranDocumentControllerProvider provider,
  ) {
    return call(albaranId: provider.albaranId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'clienteAlbaranDocumentControllerProvider';
}

/// See also [ClienteAlbaranDocumentController].
class ClienteAlbaranDocumentControllerProvider
    extends
        AutoDisposeNotifierProviderImpl<
          ClienteAlbaranDocumentController,
          void
        > {
  /// See also [ClienteAlbaranDocumentController].
  ClienteAlbaranDocumentControllerProvider({required String albaranId})
    : this._internal(
        () => ClienteAlbaranDocumentController()..albaranId = albaranId,
        from: clienteAlbaranDocumentControllerProvider,
        name: r'clienteAlbaranDocumentControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$clienteAlbaranDocumentControllerHash,
        dependencies: ClienteAlbaranDocumentControllerFamily._dependencies,
        allTransitiveDependencies:
            ClienteAlbaranDocumentControllerFamily._allTransitiveDependencies,
        albaranId: albaranId,
      );

  ClienteAlbaranDocumentControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.albaranId,
  }) : super.internal();

  final String albaranId;

  @override
  void runNotifierBuild(covariant ClienteAlbaranDocumentController notifier) {
    return notifier.build(albaranId: albaranId);
  }

  @override
  Override overrideWith(ClienteAlbaranDocumentController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClienteAlbaranDocumentControllerProvider._internal(
        () => create()..albaranId = albaranId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        albaranId: albaranId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ClienteAlbaranDocumentController, void>
  createElement() {
    return _ClienteAlbaranDocumentControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteAlbaranDocumentControllerProvider &&
        other.albaranId == albaranId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, albaranId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ClienteAlbaranDocumentControllerRef
    on AutoDisposeNotifierProviderRef<void> {
  /// The parameter `albaranId` of this provider.
  String get albaranId;
}

class _ClienteAlbaranDocumentControllerProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          ClienteAlbaranDocumentController,
          void
        >
    with ClienteAlbaranDocumentControllerRef {
  _ClienteAlbaranDocumentControllerProviderElement(super.provider);

  @override
  String get albaranId =>
      (origin as ClienteAlbaranDocumentControllerProvider).albaranId;
}

String _$openDeliveryNoteDocumentHash() =>
    r'ea8f204a9003b1615f033a401b8f629d93d74f9a';

/// See also [OpenDeliveryNoteDocument].
@ProviderFor(OpenDeliveryNoteDocument)
final openDeliveryNoteDocumentProvider =
    AutoDisposeNotifierProvider<
      OpenDeliveryNoteDocument,
      MutationState<File?, AdjuntoParam>
    >.internal(
      OpenDeliveryNoteDocument.new,
      name: r'openDeliveryNoteDocumentProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$openDeliveryNoteDocumentHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$OpenDeliveryNoteDocument =
    AutoDisposeNotifier<MutationState<File?, AdjuntoParam>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
