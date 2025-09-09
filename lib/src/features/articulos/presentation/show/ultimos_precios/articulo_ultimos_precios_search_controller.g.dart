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

  FutureOr<int> build({required String articuloId});
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
    return call(articuloId: provider.articuloId);
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
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ArticuloUltimosPreciosIndexScreenController,
          int
        > {
  /// See also [ArticuloUltimosPreciosIndexScreenController].
  ArticuloUltimosPreciosIndexScreenControllerProvider({
    required String articuloId,
  }) : this._internal(
         () =>
             ArticuloUltimosPreciosIndexScreenController()
               ..articuloId = articuloId,
         from: articuloUltimosPreciosIndexScreenControllerProvider,
         name: r'articuloUltimosPreciosIndexScreenControllerProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$articuloUltimosPreciosIndexScreenControllerHash,
         dependencies:
             ArticuloUltimosPreciosIndexScreenControllerFamily._dependencies,
         allTransitiveDependencies:
             ArticuloUltimosPreciosIndexScreenControllerFamily
                 ._allTransitiveDependencies,
         articuloId: articuloId,
       );

  ArticuloUltimosPreciosIndexScreenControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.articuloId,
  }) : super.internal();

  final String articuloId;

  @override
  FutureOr<int> runNotifierBuild(
    covariant ArticuloUltimosPreciosIndexScreenController notifier,
  ) {
    return notifier.build(articuloId: articuloId);
  }

  @override
  Override overrideWith(
    ArticuloUltimosPreciosIndexScreenController Function() create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ArticuloUltimosPreciosIndexScreenControllerProvider._internal(
        () => create()..articuloId = articuloId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        articuloId: articuloId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ArticuloUltimosPreciosIndexScreenController,
    int
  >
  createElement() {
    return _ArticuloUltimosPreciosIndexScreenControllerProviderElement(this);
  }

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
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ArticuloUltimosPreciosIndexScreenControllerRef
    on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `articuloId` of this provider.
  String get articuloId;
}

class _ArticuloUltimosPreciosIndexScreenControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ArticuloUltimosPreciosIndexScreenController,
          int
        >
    with ArticuloUltimosPreciosIndexScreenControllerRef {
  _ArticuloUltimosPreciosIndexScreenControllerProviderElement(super.provider);

  @override
  String get articuloId =>
      (origin as ArticuloUltimosPreciosIndexScreenControllerProvider)
          .articuloId;
}

String _$articuloUltimosPreciosIndexScreenPaginatedControllerHash() =>
    r'463df4f655692cec411990f3b1d20e68fe28cc71';

abstract class _$ArticuloUltimosPreciosIndexScreenPaginatedController
    extends
        BuildlessAutoDisposeAsyncNotifier<List<EstadisticasUltimosPrecios>> {
  late final int page;
  late final String articuloId;

  FutureOr<List<EstadisticasUltimosPrecios>> build({
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
    return call(page: provider.page, articuloId: provider.articuloId);
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
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ArticuloUltimosPreciosIndexScreenPaginatedController,
          List<EstadisticasUltimosPrecios>
        > {
  /// See also [ArticuloUltimosPreciosIndexScreenPaginatedController].
  ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider({
    required int page,
    required String articuloId,
  }) : this._internal(
         () => ArticuloUltimosPreciosIndexScreenPaginatedController()
           ..page = page
           ..articuloId = articuloId,
         from: articuloUltimosPreciosIndexScreenPaginatedControllerProvider,
         name: r'articuloUltimosPreciosIndexScreenPaginatedControllerProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$articuloUltimosPreciosIndexScreenPaginatedControllerHash,
         dependencies:
             ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily
                 ._dependencies,
         allTransitiveDependencies:
             ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily
                 ._allTransitiveDependencies,
         page: page,
         articuloId: articuloId,
       );

  ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.articuloId,
  }) : super.internal();

  final int page;
  final String articuloId;

  @override
  FutureOr<List<EstadisticasUltimosPrecios>> runNotifierBuild(
    covariant ArticuloUltimosPreciosIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(page: page, articuloId: articuloId);
  }

  @override
  Override overrideWith(
    ArticuloUltimosPreciosIndexScreenPaginatedController Function() create,
  ) {
    return ProviderOverride(
      origin: this,
      override:
          ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider._internal(
            () => create()
              ..page = page
              ..articuloId = articuloId,
            from: from,
            name: null,
            dependencies: null,
            allTransitiveDependencies: null,
            debugGetCreateSourceHash: null,
            page: page,
            articuloId: articuloId,
          ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ArticuloUltimosPreciosIndexScreenPaginatedController,
    List<EstadisticasUltimosPrecios>
  >
  createElement() {
    return _ArticuloUltimosPreciosIndexScreenPaginatedControllerProviderElement(
      this,
    );
  }

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
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ArticuloUltimosPreciosIndexScreenPaginatedControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<EstadisticasUltimosPrecios>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `articuloId` of this provider.
  String get articuloId;
}

class _ArticuloUltimosPreciosIndexScreenPaginatedControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ArticuloUltimosPreciosIndexScreenPaginatedController,
          List<EstadisticasUltimosPrecios>
        >
    with ArticuloUltimosPreciosIndexScreenPaginatedControllerRef {
  _ArticuloUltimosPreciosIndexScreenPaginatedControllerProviderElement(
    super.provider,
  );

  @override
  int get page =>
      (origin as ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider)
          .page;
  @override
  String get articuloId =>
      (origin as ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider)
          .articuloId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
