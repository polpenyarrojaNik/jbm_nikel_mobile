// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_ultimos_precios_search_controller.dart';

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

String $ArticuloUltimosPreciosIndexScreenControllerHash() =>
    r'1dd1821f890011dfa5278fa991bfc60093d5d7cf';

/// See also [ArticuloUltimosPreciosIndexScreenController].
class ArticuloUltimosPreciosIndexScreenControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ArticuloUltimosPreciosIndexScreenController, int> {
  ArticuloUltimosPreciosIndexScreenControllerProvider({
    required this.articuloId,
  }) : super(
          () => ArticuloUltimosPreciosIndexScreenController()
            ..articuloId = articuloId,
          from: articuloUltimosPreciosIndexScreenControllerProvider,
          name: r'articuloUltimosPreciosIndexScreenControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $ArticuloUltimosPreciosIndexScreenControllerHash,
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
  FutureOr<int> runNotifierBuild(
    covariant _$ArticuloUltimosPreciosIndexScreenController notifier,
  ) {
    return notifier.build(
      articuloId: articuloId,
    );
  }
}

typedef ArticuloUltimosPreciosIndexScreenControllerRef
    = AutoDisposeAsyncNotifierProviderRef<int>;

/// See also [ArticuloUltimosPreciosIndexScreenController].
final articuloUltimosPreciosIndexScreenControllerProvider =
    ArticuloUltimosPreciosIndexScreenControllerFamily();

class ArticuloUltimosPreciosIndexScreenControllerFamily
    extends Family<AsyncValue<int>> {
  ArticuloUltimosPreciosIndexScreenControllerFamily();

  ArticuloUltimosPreciosIndexScreenControllerProvider call({
    required String articuloId,
  }) {
    return ArticuloUltimosPreciosIndexScreenControllerProvider(
      articuloId: articuloId,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<
      ArticuloUltimosPreciosIndexScreenController, int> getProviderOverride(
    covariant ArticuloUltimosPreciosIndexScreenControllerProvider provider,
  ) {
    return call(
      articuloId: provider.articuloId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'articuloUltimosPreciosIndexScreenControllerProvider';
}

abstract class _$ArticuloUltimosPreciosIndexScreenController
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final String articuloId;

  FutureOr<int> build({
    required String articuloId,
  });
}

String $ArticuloUltimosPreciosIndexScreenPaginatedControllerHash() =>
    r'463df4f655692cec411990f3b1d20e68fe28cc71';

/// See also [ArticuloUltimosPreciosIndexScreenPaginatedController].
class ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ArticuloUltimosPreciosIndexScreenPaginatedController,
        List<EstadisticasUltimosPrecios>> {
  ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider({
    required this.page,
    required this.articuloId,
  }) : super(
          () => ArticuloUltimosPreciosIndexScreenPaginatedController()
            ..page = page
            ..articuloId = articuloId,
          from: articuloUltimosPreciosIndexScreenPaginatedControllerProvider,
          name: r'articuloUltimosPreciosIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $ArticuloUltimosPreciosIndexScreenPaginatedControllerHash,
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
  FutureOr<List<EstadisticasUltimosPrecios>> runNotifierBuild(
    covariant _$ArticuloUltimosPreciosIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
      articuloId: articuloId,
    );
  }
}

typedef ArticuloUltimosPreciosIndexScreenPaginatedControllerRef
    = AutoDisposeAsyncNotifierProviderRef<List<EstadisticasUltimosPrecios>>;

/// See also [ArticuloUltimosPreciosIndexScreenPaginatedController].
final articuloUltimosPreciosIndexScreenPaginatedControllerProvider =
    ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily();

class ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<EstadisticasUltimosPrecios>>> {
  ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily();

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
  AutoDisposeAsyncNotifierProviderImpl<
      ArticuloUltimosPreciosIndexScreenPaginatedController,
      List<EstadisticasUltimosPrecios>> getProviderOverride(
    covariant ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider
        provider,
  ) {
    return call(
      page: provider.page,
      articuloId: provider.articuloId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name =>
      r'articuloUltimosPreciosIndexScreenPaginatedControllerProvider';
}

abstract class _$ArticuloUltimosPreciosIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<
        List<EstadisticasUltimosPrecios>> {
  late final int page;
  late final String articuloId;

  FutureOr<List<EstadisticasUltimosPrecios>> build({
    required int page,
    required String articuloId,
  });
}
