// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_delete_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteDireccionDeleteControllerHash() =>
    r'8cd0d1acbd308ed4e263bebf8dde77d99cf0aa00';

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

abstract class _$ClienteDireccionDeleteController
    extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final ClienteImpParam clienteImpParam;

  FutureOr<bool> build(
    ClienteImpParam clienteImpParam,
  );
}

/// See also [ClienteDireccionDeleteController].
@ProviderFor(ClienteDireccionDeleteController)
const clienteDireccionDeleteControllerProvider =
    ClienteDireccionDeleteControllerFamily();

/// See also [ClienteDireccionDeleteController].
class ClienteDireccionDeleteControllerFamily extends Family<AsyncValue<bool>> {
  /// See also [ClienteDireccionDeleteController].
  const ClienteDireccionDeleteControllerFamily();

  /// See also [ClienteDireccionDeleteController].
  ClienteDireccionDeleteControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) {
    return ClienteDireccionDeleteControllerProvider(
      clienteImpParam,
    );
  }

  @override
  ClienteDireccionDeleteControllerProvider getProviderOverride(
    covariant ClienteDireccionDeleteControllerProvider provider,
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
  String? get name => r'clienteDireccionDeleteControllerProvider';
}

/// See also [ClienteDireccionDeleteController].
class ClienteDireccionDeleteControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteDireccionDeleteController, bool> {
  /// See also [ClienteDireccionDeleteController].
  ClienteDireccionDeleteControllerProvider(
    ClienteImpParam clienteImpParam,
  ) : this._internal(
          () => ClienteDireccionDeleteController()
            ..clienteImpParam = clienteImpParam,
          from: clienteDireccionDeleteControllerProvider,
          name: r'clienteDireccionDeleteControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$clienteDireccionDeleteControllerHash,
          dependencies: ClienteDireccionDeleteControllerFamily._dependencies,
          allTransitiveDependencies:
              ClienteDireccionDeleteControllerFamily._allTransitiveDependencies,
          clienteImpParam: clienteImpParam,
        );

  ClienteDireccionDeleteControllerProvider._internal(
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
    covariant ClienteDireccionDeleteController notifier,
  ) {
    return notifier.build(
      clienteImpParam,
    );
  }

  @override
  Override overrideWith(ClienteDireccionDeleteController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ClienteDireccionDeleteControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<ClienteDireccionDeleteController,
      bool> createElement() {
    return _ClienteDireccionDeleteControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ClienteDireccionDeleteControllerProvider &&
        other.clienteImpParam == clienteImpParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteImpParam.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ClienteDireccionDeleteControllerRef
    on AutoDisposeAsyncNotifierProviderRef<bool> {
  /// The parameter `clienteImpParam` of this provider.
  ClienteImpParam get clienteImpParam;
}

class _ClienteDireccionDeleteControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        ClienteDireccionDeleteController,
        bool> with ClienteDireccionDeleteControllerRef {
  _ClienteDireccionDeleteControllerProviderElement(super.provider);

  @override
  ClienteImpParam get clienteImpParam =>
      (origin as ClienteDireccionDeleteControllerProvider).clienteImpParam;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
