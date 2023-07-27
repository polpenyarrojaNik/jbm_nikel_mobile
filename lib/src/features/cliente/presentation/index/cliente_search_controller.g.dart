// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteIndexScreenControllerHash() =>
    r'9f7924fc492bbbcf99b44cb898e9579d000da373';

/// See also [ClienteIndexScreenController].
@ProviderFor(ClienteIndexScreenController)
final clienteIndexScreenControllerProvider = AutoDisposeAsyncNotifierProvider<
    ClienteIndexScreenController, int>.internal(
  ClienteIndexScreenController.new,
  name: r'clienteIndexScreenControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$clienteIndexScreenControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ClienteIndexScreenController = AutoDisposeAsyncNotifier<int>;
String _$clienteIndexScreenPaginatedControllerHash() =>
    r'7bd995c24a5638026dec0e2a9663e0c07f68a07e';

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

abstract class _$ClienteIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<Cliente>> {
  late final int page;

  Future<List<Cliente>> build({
    required int page,
  });
}

/// See also [ClienteIndexScreenPaginatedController].
@ProviderFor(ClienteIndexScreenPaginatedController)
const clienteIndexScreenPaginatedControllerProvider =
    ClienteIndexScreenPaginatedControllerFamily();

/// See also [ClienteIndexScreenPaginatedController].
class ClienteIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<Cliente>>> {
  /// See also [ClienteIndexScreenPaginatedController].
  const ClienteIndexScreenPaginatedControllerFamily();

  /// See also [ClienteIndexScreenPaginatedController].
  ClienteIndexScreenPaginatedControllerProvider call({
    required int page,
  }) {
    return ClienteIndexScreenPaginatedControllerProvider(
      page: page,
    );
  }

  @override
  ClienteIndexScreenPaginatedControllerProvider getProviderOverride(
    covariant ClienteIndexScreenPaginatedControllerProvider provider,
  ) {
    return call(
      page: provider.page,
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
  String? get name => r'clienteIndexScreenPaginatedControllerProvider';
}

/// See also [ClienteIndexScreenPaginatedController].
class ClienteIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteIndexScreenPaginatedController, List<Cliente>> {
  /// See also [ClienteIndexScreenPaginatedController].
  ClienteIndexScreenPaginatedControllerProvider({
    required this.page,
  }) : super.internal(
          () => ClienteIndexScreenPaginatedController()..page = page,
          from: clienteIndexScreenPaginatedControllerProvider,
          name: r'clienteIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$clienteIndexScreenPaginatedControllerHash,
          dependencies:
              ClienteIndexScreenPaginatedControllerFamily._dependencies,
          allTransitiveDependencies: ClienteIndexScreenPaginatedControllerFamily
              ._allTransitiveDependencies,
        );

  final int page;

  @override
  bool operator ==(Object other) {
    return other is ClienteIndexScreenPaginatedControllerProvider &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<List<Cliente>> runNotifierBuild(
    covariant ClienteIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
