// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_edit_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteDireccionEditPageControllerHash() =>
    r'039ada5b66b4e4172203d1572041b1ea1c797755';

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

abstract class _$ClienteDireccionEditPageController
    extends BuildlessAutoDisposeAsyncNotifier<ClienteDireccionEditPageData> {
  late final ClienteImpParam clienteImpParam;

  FutureOr<ClienteDireccionEditPageData> build(ClienteImpParam clienteImpParam);
}

/// See also [ClienteDireccionEditPageController].
@ProviderFor(ClienteDireccionEditPageController)
const clienteDireccionEditPageControllerProvider =
    ClienteDireccionEditPageControllerFamily();

/// See also [ClienteDireccionEditPageController].
class ClienteDireccionEditPageControllerFamily
    extends Family<AsyncValue<ClienteDireccionEditPageData>> {
  /// See also [ClienteDireccionEditPageController].
  const ClienteDireccionEditPageControllerFamily();

  /// See also [ClienteDireccionEditPageController].
  ClienteDireccionEditPageControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) {
    return ClienteDireccionEditPageControllerProvider(clienteImpParam);
  }

  @override
  ClienteDireccionEditPageControllerProvider getProviderOverride(
    covariant ClienteDireccionEditPageControllerProvider provider,
  ) {
    return call(provider.clienteImpParam);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'clienteDireccionEditPageControllerProvider';
}

/// See also [ClienteDireccionEditPageController].
class ClienteDireccionEditPageControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClienteDireccionEditPageController,
          ClienteDireccionEditPageData
        > {
  /// See also [ClienteDireccionEditPageController].
  ClienteDireccionEditPageControllerProvider(ClienteImpParam clienteImpParam)
    : this._internal(
        () =>
            ClienteDireccionEditPageController()
              ..clienteImpParam = clienteImpParam,
        from: clienteDireccionEditPageControllerProvider,
        name: r'clienteDireccionEditPageControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$clienteDireccionEditPageControllerHash,
        dependencies: ClienteDireccionEditPageControllerFamily._dependencies,
        allTransitiveDependencies:
            ClienteDireccionEditPageControllerFamily._allTransitiveDependencies,
        clienteImpParam: clienteImpParam,
      );

  ClienteDireccionEditPageControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.clienteImpParam,
  }) : super.internal();

  final ClienteImpParam clienteImpParam;

  @override
  FutureOr<ClienteDireccionEditPageData> runNotifierBuild(
    covariant ClienteDireccionEditPageController notifier,
  ) {
    return notifier.build(clienteImpParam);
  }

  @override
  Override overrideWith(ClienteDireccionEditPageController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClienteDireccionEditPageControllerProvider._internal(
        () => create()..clienteImpParam = clienteImpParam,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        clienteImpParam: clienteImpParam,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ClienteDireccionEditPageController,
    ClienteDireccionEditPageData
  >
  createElement() {
    return _ClienteDireccionEditPageControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteDireccionEditPageControllerProvider &&
        other.clienteImpParam == clienteImpParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteImpParam.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ClienteDireccionEditPageControllerRef
    on AutoDisposeAsyncNotifierProviderRef<ClienteDireccionEditPageData> {
  /// The parameter `clienteImpParam` of this provider.
  ClienteImpParam get clienteImpParam;
}

class _ClienteDireccionEditPageControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ClienteDireccionEditPageController,
          ClienteDireccionEditPageData
        >
    with ClienteDireccionEditPageControllerRef {
  _ClienteDireccionEditPageControllerProviderElement(super.provider);

  @override
  ClienteImpParam get clienteImpParam =>
      (origin as ClienteDireccionEditPageControllerProvider).clienteImpParam;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
