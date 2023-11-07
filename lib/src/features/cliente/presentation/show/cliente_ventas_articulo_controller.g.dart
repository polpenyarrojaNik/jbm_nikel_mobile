// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_ventas_articulo_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteVentasArticuloIndexScreenPaginatedControllerHash() =>
    r'1893290fa7827b98c106fef93e4838df08c82313';

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

abstract class _$ClienteVentasArticuloIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<ClienteVentasArticulo>> {
  late final String clienteId;

  FutureOr<List<ClienteVentasArticulo>> build({
    required String clienteId,
  });
}

/// See also [ClienteVentasArticuloIndexScreenPaginatedController].
@ProviderFor(ClienteVentasArticuloIndexScreenPaginatedController)
const clienteVentasArticuloIndexScreenPaginatedControllerProvider =
    ClienteVentasArticuloIndexScreenPaginatedControllerFamily();

/// See also [ClienteVentasArticuloIndexScreenPaginatedController].
class ClienteVentasArticuloIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<ClienteVentasArticulo>>> {
  /// See also [ClienteVentasArticuloIndexScreenPaginatedController].
  const ClienteVentasArticuloIndexScreenPaginatedControllerFamily();

  /// See also [ClienteVentasArticuloIndexScreenPaginatedController].
  ClienteVentasArticuloIndexScreenPaginatedControllerProvider call({
    required String clienteId,
  }) {
    return ClienteVentasArticuloIndexScreenPaginatedControllerProvider(
      clienteId: clienteId,
    );
  }

  @override
  ClienteVentasArticuloIndexScreenPaginatedControllerProvider
      getProviderOverride(
    covariant ClienteVentasArticuloIndexScreenPaginatedControllerProvider
        provider,
  ) {
    return call(
      clienteId: provider.clienteId,
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
  String? get name =>
      r'clienteVentasArticuloIndexScreenPaginatedControllerProvider';
}

/// See also [ClienteVentasArticuloIndexScreenPaginatedController].
class ClienteVentasArticuloIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteVentasArticuloIndexScreenPaginatedController,
        List<ClienteVentasArticulo>> {
  /// See also [ClienteVentasArticuloIndexScreenPaginatedController].
  ClienteVentasArticuloIndexScreenPaginatedControllerProvider({
    required String clienteId,
  }) : this._internal(
          () => ClienteVentasArticuloIndexScreenPaginatedController()
            ..clienteId = clienteId,
          from: clienteVentasArticuloIndexScreenPaginatedControllerProvider,
          name: r'clienteVentasArticuloIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$clienteVentasArticuloIndexScreenPaginatedControllerHash,
          dependencies:
              ClienteVentasArticuloIndexScreenPaginatedControllerFamily
                  ._dependencies,
          allTransitiveDependencies:
              ClienteVentasArticuloIndexScreenPaginatedControllerFamily
                  ._allTransitiveDependencies,
          clienteId: clienteId,
        );

  ClienteVentasArticuloIndexScreenPaginatedControllerProvider._internal(
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
  FutureOr<List<ClienteVentasArticulo>> runNotifierBuild(
    covariant ClienteVentasArticuloIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      clienteId: clienteId,
    );
  }

  @override
  Override overrideWith(
      ClienteVentasArticuloIndexScreenPaginatedController Function() create) {
    return ProviderOverride(
      origin: this,
      override:
          ClienteVentasArticuloIndexScreenPaginatedControllerProvider._internal(
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
      ClienteVentasArticuloIndexScreenPaginatedController,
      List<ClienteVentasArticulo>> createElement() {
    return _ClienteVentasArticuloIndexScreenPaginatedControllerProviderElement(
        this);
  }

  @override
  bool operator ==(Object other) {
    return other
            is ClienteVentasArticuloIndexScreenPaginatedControllerProvider &&
        other.clienteId == clienteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ClienteVentasArticuloIndexScreenPaginatedControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<ClienteVentasArticulo>> {
  /// The parameter `clienteId` of this provider.
  String get clienteId;
}

class _ClienteVentasArticuloIndexScreenPaginatedControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        ClienteVentasArticuloIndexScreenPaginatedController,
        List<ClienteVentasArticulo>>
    with ClienteVentasArticuloIndexScreenPaginatedControllerRef {
  _ClienteVentasArticuloIndexScreenPaginatedControllerProviderElement(
      super.provider);

  @override
  String get clienteId =>
      (origin as ClienteVentasArticuloIndexScreenPaginatedControllerProvider)
          .clienteId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
