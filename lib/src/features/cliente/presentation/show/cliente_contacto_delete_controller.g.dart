// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_delete_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteContactoDeleteControllerHash() =>
    r'2b2c16262cc1247b16c0410464ae961fc0e54433';

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

abstract class _$ClienteContactoDeleteController
    extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final ClienteImpParam clienteImpParam;

  FutureOr<bool> build(
    ClienteImpParam clienteImpParam,
  );
}

/// See also [ClienteContactoDeleteController].
@ProviderFor(ClienteContactoDeleteController)
const clienteContactoDeleteControllerProvider =
    ClienteContactoDeleteControllerFamily();

/// See also [ClienteContactoDeleteController].
class ClienteContactoDeleteControllerFamily extends Family<AsyncValue<bool>> {
  /// See also [ClienteContactoDeleteController].
  const ClienteContactoDeleteControllerFamily();

  /// See also [ClienteContactoDeleteController].
  ClienteContactoDeleteControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) {
    return ClienteContactoDeleteControllerProvider(
      clienteImpParam,
    );
  }

  @override
  ClienteContactoDeleteControllerProvider getProviderOverride(
    covariant ClienteContactoDeleteControllerProvider provider,
  ) {
    return call(
      provider.clienteImpParam,
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
  String? get name => r'clienteContactoDeleteControllerProvider';
}

/// See also [ClienteContactoDeleteController].
class ClienteContactoDeleteControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteContactoDeleteController, bool> {
  /// See also [ClienteContactoDeleteController].
  ClienteContactoDeleteControllerProvider(
    ClienteImpParam clienteImpParam,
  ) : this._internal(
          () => ClienteContactoDeleteController()
            ..clienteImpParam = clienteImpParam,
          from: clienteContactoDeleteControllerProvider,
          name: r'clienteContactoDeleteControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$clienteContactoDeleteControllerHash,
          dependencies: ClienteContactoDeleteControllerFamily._dependencies,
          allTransitiveDependencies:
              ClienteContactoDeleteControllerFamily._allTransitiveDependencies,
          clienteImpParam: clienteImpParam,
        );

  ClienteContactoDeleteControllerProvider._internal(
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
  FutureOr<bool> runNotifierBuild(
    covariant ClienteContactoDeleteController notifier,
  ) {
    return notifier.build(
      clienteImpParam,
    );
  }

  @override
  Override overrideWith(ClienteContactoDeleteController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClienteContactoDeleteControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ClienteContactoDeleteController, bool>
      createElement() {
    return _ClienteContactoDeleteControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoDeleteControllerProvider &&
        other.clienteImpParam == clienteImpParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteImpParam.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ClienteContactoDeleteControllerRef
    on AutoDisposeAsyncNotifierProviderRef<bool> {
  /// The parameter `clienteImpParam` of this provider.
  ClienteImpParam get clienteImpParam;
}

class _ClienteContactoDeleteControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        ClienteContactoDeleteController,
        bool> with ClienteContactoDeleteControllerRef {
  _ClienteContactoDeleteControllerProviderElement(super.provider);

  @override
  ClienteImpParam get clienteImpParam =>
      (origin as ClienteContactoDeleteControllerProvider).clienteImpParam;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
