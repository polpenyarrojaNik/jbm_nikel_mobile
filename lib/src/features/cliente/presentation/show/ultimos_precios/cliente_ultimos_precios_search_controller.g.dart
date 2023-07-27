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

  Future<int> build({
    required String clienteId,
  });
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
  String? get name => r'clienteUltimosPreciosIndexScreenControllerProvider';
}

/// See also [ClienteUltimosPreciosIndexScreenController].
class ClienteUltimosPreciosIndexScreenControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteUltimosPreciosIndexScreenController, int> {
  /// See also [ClienteUltimosPreciosIndexScreenController].
  ClienteUltimosPreciosIndexScreenControllerProvider({
    required this.clienteId,
  }) : super.internal(
          () => ClienteUltimosPreciosIndexScreenController()
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
        );

  final String clienteId;

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

  @override
  Future<int> runNotifierBuild(
    covariant ClienteUltimosPreciosIndexScreenController notifier,
  ) {
    return notifier.build(
      clienteId: clienteId,
    );
  }
}

String _$clienteUltimosPreciosIndexScreenPaginatedControllerHash() =>
    r'4ce9f71fba12e87c2ca23acd15ed7c7aecf65dd0';

abstract class _$ClienteUltimosPreciosIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<
        List<EstadisticasUltimosPrecios>> {
  late final int page;
  late final String clienteId;

  Future<List<EstadisticasUltimosPrecios>> build({
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
    return call(
      page: provider.page,
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
      r'clienteUltimosPreciosIndexScreenPaginatedControllerProvider';
}

/// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
class ClienteUltimosPreciosIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteUltimosPreciosIndexScreenPaginatedController,
        List<EstadisticasUltimosPrecios>> {
  /// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
  ClienteUltimosPreciosIndexScreenPaginatedControllerProvider({
    required this.page,
    required this.clienteId,
  }) : super.internal(
          () => ClienteUltimosPreciosIndexScreenPaginatedController()
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
        );

  final int page;
  final String clienteId;

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

  @override
  Future<List<EstadisticasUltimosPrecios>> runNotifierBuild(
    covariant ClienteUltimosPreciosIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
      clienteId: clienteId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
