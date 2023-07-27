// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_edit_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteContactoEditPageControllerHash() =>
    r'4506a1811e2986106c2a4bc14f650392e9dc2163';

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

abstract class _$ClienteContactoEditPageController
    extends BuildlessAutoDisposeAsyncNotifier<ClienteContactoImpEditPageData> {
  late final ClienteImpParam clienteImpParam;

  Future<ClienteContactoImpEditPageData> build(
    ClienteImpParam clienteImpParam,
  );
}

/// See also [ClienteContactoEditPageController].
@ProviderFor(ClienteContactoEditPageController)
const clienteContactoEditPageControllerProvider =
    ClienteContactoEditPageControllerFamily();

/// See also [ClienteContactoEditPageController].
class ClienteContactoEditPageControllerFamily
    extends Family<AsyncValue<ClienteContactoImpEditPageData>> {
  /// See also [ClienteContactoEditPageController].
  const ClienteContactoEditPageControllerFamily();

  /// See also [ClienteContactoEditPageController].
  ClienteContactoEditPageControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) {
    return ClienteContactoEditPageControllerProvider(
      clienteImpParam,
    );
  }

  @override
  ClienteContactoEditPageControllerProvider getProviderOverride(
    covariant ClienteContactoEditPageControllerProvider provider,
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
  String? get name => r'clienteContactoEditPageControllerProvider';
}

/// See also [ClienteContactoEditPageController].
class ClienteContactoEditPageControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteContactoEditPageController, ClienteContactoImpEditPageData> {
  /// See also [ClienteContactoEditPageController].
  ClienteContactoEditPageControllerProvider(
    this.clienteImpParam,
  ) : super.internal(
          () => ClienteContactoEditPageController()
            ..clienteImpParam = clienteImpParam,
          from: clienteContactoEditPageControllerProvider,
          name: r'clienteContactoEditPageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$clienteContactoEditPageControllerHash,
          dependencies: ClienteContactoEditPageControllerFamily._dependencies,
          allTransitiveDependencies: ClienteContactoEditPageControllerFamily
              ._allTransitiveDependencies,
        );

  final ClienteImpParam clienteImpParam;

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoEditPageControllerProvider &&
        other.clienteImpParam == clienteImpParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteImpParam.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<ClienteContactoImpEditPageData> runNotifierBuild(
    covariant ClienteContactoEditPageController notifier,
  ) {
    return notifier.build(
      clienteImpParam,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
