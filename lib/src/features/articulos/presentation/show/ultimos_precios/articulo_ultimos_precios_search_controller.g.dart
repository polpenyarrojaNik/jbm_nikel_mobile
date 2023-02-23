// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_ultimos_precios_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articuloUltimosPreciosIndexScreenControllerHash() =>
    r'1dd1821f890011dfa5278fa991bfc60093d5d7cf';

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

abstract class _$ArticuloUltimosPreciosIndexScreenController
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final String articuloId;

  Future<int> build({
    required String articuloId,
  });
}

/// See also [ArticuloUltimosPreciosIndexScreenController].
@ProviderFor(ArticuloUltimosPreciosIndexScreenController)
const articuloUltimosPreciosIndexScreenControllerProvider =
    ArticuloUltimosPreciosIndexScreenControllerFamily();

/// See also [ArticuloUltimosPreciosIndexScreenController].
class ArticuloUltimosPreciosIndexScreenControllerFamily
    extends Family<AsyncValue<int>> {
  /// See also [ArticuloUltimosPreciosIndexScreenController].
  const ArticuloUltimosPreciosIndexScreenControllerFamily();

  /// See also [ArticuloUltimosPreciosIndexScreenController].
  ArticuloUltimosPreciosIndexScreenControllerProvider call({
    required String articuloId,
  }) {
    return ArticuloUltimosPreciosIndexScreenControllerProvider(
      articuloId: articuloId,
    );
  }

  @override
  ArticuloUltimosPreciosIndexScreenControllerProvider getProviderOverride(
    covariant ArticuloUltimosPreciosIndexScreenControllerProvider provider,
  ) {
    return call(
      articuloId: provider.articuloId,
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
  String? get name => r'articuloUltimosPreciosIndexScreenControllerProvider';
}

/// See also [ArticuloUltimosPreciosIndexScreenController].
class ArticuloUltimosPreciosIndexScreenControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ArticuloUltimosPreciosIndexScreenController, int> {
  /// See also [ArticuloUltimosPreciosIndexScreenController].
  ArticuloUltimosPreciosIndexScreenControllerProvider({
    required this.articuloId,
  }) : super.internal(
          () => ArticuloUltimosPreciosIndexScreenController()
            ..articuloId = articuloId,
          from: articuloUltimosPreciosIndexScreenControllerProvider,
          name: r'articuloUltimosPreciosIndexScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articuloUltimosPreciosIndexScreenControllerHash,
          dependencies:
              ArticuloUltimosPreciosIndexScreenControllerFamily._dependencies,
          allTransitiveDependencies:
              ArticuloUltimosPreciosIndexScreenControllerFamily
                  ._allTransitiveDependencies,
        );

  final String articuloId;

  @override
  bool operator ==(Object other) {
    return other is ArticuloUltimosPreciosIndexScreenControllerProvider &&
        other.articuloId == articuloId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, articuloId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<int> runNotifierBuild(
    covariant ArticuloUltimosPreciosIndexScreenController notifier,
  ) {
    return notifier.build(
      articuloId: articuloId,
    );
  }
}

String _$articuloUltimosPreciosIndexScreenPaginatedControllerHash() =>
    r'463df4f655692cec411990f3b1d20e68fe28cc71';

abstract class _$ArticuloUltimosPreciosIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<
        List<EstadisticasUltimosPrecios>> {
  late final int page;
  late final String articuloId;

  Future<List<EstadisticasUltimosPrecios>> build({
    required int page,
    required String articuloId,
  });
}

/// See also [ArticuloUltimosPreciosIndexScreenPaginatedController].
@ProviderFor(ArticuloUltimosPreciosIndexScreenPaginatedController)
const articuloUltimosPreciosIndexScreenPaginatedControllerProvider =
    ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily();

/// See also [ArticuloUltimosPreciosIndexScreenPaginatedController].
class ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<EstadisticasUltimosPrecios>>> {
  /// See also [ArticuloUltimosPreciosIndexScreenPaginatedController].
  const ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily();

  /// See also [ArticuloUltimosPreciosIndexScreenPaginatedController].
  ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider call({
    required int page,
    required String articuloId,
  }) {
    return ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider(
      page: page,
      articuloId: articuloId,
    );
  }

  @override
  ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider
      getProviderOverride(
    covariant ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider
        provider,
  ) {
    return call(
      page: provider.page,
      articuloId: provider.articuloId,
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
      r'articuloUltimosPreciosIndexScreenPaginatedControllerProvider';
}

/// See also [ArticuloUltimosPreciosIndexScreenPaginatedController].
class ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ArticuloUltimosPreciosIndexScreenPaginatedController,
        List<EstadisticasUltimosPrecios>> {
  /// See also [ArticuloUltimosPreciosIndexScreenPaginatedController].
  ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider({
    required this.page,
    required this.articuloId,
  }) : super.internal(
          () => ArticuloUltimosPreciosIndexScreenPaginatedController()
            ..page = page
            ..articuloId = articuloId,
          from: articuloUltimosPreciosIndexScreenPaginatedControllerProvider,
          name: r'articuloUltimosPreciosIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articuloUltimosPreciosIndexScreenPaginatedControllerHash,
          dependencies:
              ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily
                  ._dependencies,
          allTransitiveDependencies:
              ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily
                  ._allTransitiveDependencies,
        );

  final int page;
  final String articuloId;

  @override
  bool operator ==(Object other) {
    return other
            is ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider &&
        other.page == page &&
        other.articuloId == articuloId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, articuloId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<List<EstadisticasUltimosPrecios>> runNotifierBuild(
    covariant ArticuloUltimosPreciosIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
      articuloId: articuloId,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
