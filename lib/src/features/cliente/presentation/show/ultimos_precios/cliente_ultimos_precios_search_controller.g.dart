// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_ultimos_precios_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String $ClienteUltimosPreciosIndexScreenControllerHash() =>
    r'd4a434dd16e5cf812fe9e7996144a24e747b2558';

/// See also [ClienteUltimosPreciosIndexScreenController].
class ClienteUltimosPreciosIndexScreenControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteUltimosPreciosIndexScreenController, int> {
  ClienteUltimosPreciosIndexScreenControllerProvider({
    required this.clienteId,
  }) : super(
          () => ClienteUltimosPreciosIndexScreenController()
            ..clienteId = clienteId,
          from: clienteUltimosPreciosIndexScreenControllerProvider,
          name: r'clienteUltimosPreciosIndexScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $ClienteUltimosPreciosIndexScreenControllerHash,
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
  FutureOr<int> runNotifierBuild(
    covariant _$ClienteUltimosPreciosIndexScreenController notifier,
  ) {
    return notifier.build(
      clienteId: clienteId,
    );
  }
}

typedef ClienteUltimosPreciosIndexScreenControllerRef
    = AutoDisposeAsyncNotifierProviderRef<int>;

/// See also [ClienteUltimosPreciosIndexScreenController].
final clienteUltimosPreciosIndexScreenControllerProvider =
    ClienteUltimosPreciosIndexScreenControllerFamily();

class ClienteUltimosPreciosIndexScreenControllerFamily
    extends Family<AsyncValue<int>> {
  ClienteUltimosPreciosIndexScreenControllerFamily();

  ClienteUltimosPreciosIndexScreenControllerProvider call({
    required String clienteId,
  }) {
    return ClienteUltimosPreciosIndexScreenControllerProvider(
      clienteId: clienteId,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<
      ClienteUltimosPreciosIndexScreenController, int> getProviderOverride(
    covariant ClienteUltimosPreciosIndexScreenControllerProvider provider,
  ) {
    return call(
      clienteId: provider.clienteId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'clienteUltimosPreciosIndexScreenControllerProvider';
}

abstract class _$ClienteUltimosPreciosIndexScreenController
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final String clienteId;

  FutureOr<int> build({
    required String clienteId,
  });
}

String $ClienteUltimosPreciosIndexScreenPaginatedControllerHash() =>
    r'4ce9f71fba12e87c2ca23acd15ed7c7aecf65dd0';

/// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
class ClienteUltimosPreciosIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteUltimosPreciosIndexScreenPaginatedController,
        List<EstadisticasUltimosPrecios>> {
  ClienteUltimosPreciosIndexScreenPaginatedControllerProvider({
    required this.page,
    required this.clienteId,
  }) : super(
          () => ClienteUltimosPreciosIndexScreenPaginatedController()
            ..page = page
            ..clienteId = clienteId,
          from: clienteUltimosPreciosIndexScreenPaginatedControllerProvider,
          name: r'clienteUltimosPreciosIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $ClienteUltimosPreciosIndexScreenPaginatedControllerHash,
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
  FutureOr<List<EstadisticasUltimosPrecios>> runNotifierBuild(
    covariant _$ClienteUltimosPreciosIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
      clienteId: clienteId,
    );
  }
}

typedef ClienteUltimosPreciosIndexScreenPaginatedControllerRef
    = AutoDisposeAsyncNotifierProviderRef<List<EstadisticasUltimosPrecios>>;

/// See also [ClienteUltimosPreciosIndexScreenPaginatedController].
final clienteUltimosPreciosIndexScreenPaginatedControllerProvider =
    ClienteUltimosPreciosIndexScreenPaginatedControllerFamily();

class ClienteUltimosPreciosIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<EstadisticasUltimosPrecios>>> {
  ClienteUltimosPreciosIndexScreenPaginatedControllerFamily();

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
  AutoDisposeAsyncNotifierProviderImpl<
      ClienteUltimosPreciosIndexScreenPaginatedController,
      List<EstadisticasUltimosPrecios>> getProviderOverride(
    covariant ClienteUltimosPreciosIndexScreenPaginatedControllerProvider
        provider,
  ) {
    return call(
      page: provider.page,
      clienteId: provider.clienteId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name =>
      r'clienteUltimosPreciosIndexScreenPaginatedControllerProvider';
}

abstract class _$ClienteUltimosPreciosIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<
        List<EstadisticasUltimosPrecios>> {
  late final int page;
  late final String clienteId;

  FutureOr<List<EstadisticasUltimosPrecios>> build({
    required int page,
    required String clienteId,
  });
}
