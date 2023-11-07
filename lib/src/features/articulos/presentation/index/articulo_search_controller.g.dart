// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articuloIndexScreenControllerHash() =>
    r'40e8919ff773d0c6d2a6e1ca63bf58105e9c4cc4';

/// See also [ArticuloIndexScreenController].
@ProviderFor(ArticuloIndexScreenController)
final articuloIndexScreenControllerProvider = AutoDisposeAsyncNotifierProvider<
    ArticuloIndexScreenController, int>.internal(
  ArticuloIndexScreenController.new,
  name: r'articuloIndexScreenControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$articuloIndexScreenControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ArticuloIndexScreenController = AutoDisposeAsyncNotifier<int>;
String _$articuloIndexScreenPaginatedControllerHash() =>
    r'572102ffab93f187f0f06f9afe5e27328965e29c';

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

abstract class _$ArticuloIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<Articulo>> {
  late final int page;

  FutureOr<List<Articulo>> build({
    required int page,
  });
}

/// See also [ArticuloIndexScreenPaginatedController].
@ProviderFor(ArticuloIndexScreenPaginatedController)
const articuloIndexScreenPaginatedControllerProvider =
    ArticuloIndexScreenPaginatedControllerFamily();

/// See also [ArticuloIndexScreenPaginatedController].
class ArticuloIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<Articulo>>> {
  /// See also [ArticuloIndexScreenPaginatedController].
  const ArticuloIndexScreenPaginatedControllerFamily();

  /// See also [ArticuloIndexScreenPaginatedController].
  ArticuloIndexScreenPaginatedControllerProvider call({
    required int page,
  }) {
    return ArticuloIndexScreenPaginatedControllerProvider(
      page: page,
    );
  }

  @override
  ArticuloIndexScreenPaginatedControllerProvider getProviderOverride(
    covariant ArticuloIndexScreenPaginatedControllerProvider provider,
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
  String? get name => r'articuloIndexScreenPaginatedControllerProvider';
}

/// See also [ArticuloIndexScreenPaginatedController].
class ArticuloIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ArticuloIndexScreenPaginatedController, List<Articulo>> {
  /// See also [ArticuloIndexScreenPaginatedController].
  ArticuloIndexScreenPaginatedControllerProvider({
    required int page,
  }) : this._internal(
          () => ArticuloIndexScreenPaginatedController()..page = page,
          from: articuloIndexScreenPaginatedControllerProvider,
          name: r'articuloIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articuloIndexScreenPaginatedControllerHash,
          dependencies:
              ArticuloIndexScreenPaginatedControllerFamily._dependencies,
          allTransitiveDependencies:
              ArticuloIndexScreenPaginatedControllerFamily
                  ._allTransitiveDependencies,
          page: page,
        );

  ArticuloIndexScreenPaginatedControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  FutureOr<List<Articulo>> runNotifierBuild(
    covariant ArticuloIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }

  @override
  Override overrideWith(
      ArticuloIndexScreenPaginatedController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ArticuloIndexScreenPaginatedControllerProvider._internal(
        () => create()..page = page,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
      ArticuloIndexScreenPaginatedController, List<Articulo>> createElement() {
    return _ArticuloIndexScreenPaginatedControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArticuloIndexScreenPaginatedControllerProvider &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ArticuloIndexScreenPaginatedControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Articulo>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _ArticuloIndexScreenPaginatedControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        ArticuloIndexScreenPaginatedController,
        List<Articulo>> with ArticuloIndexScreenPaginatedControllerRef {
  _ArticuloIndexScreenPaginatedControllerProviderElement(super.provider);

  @override
  int get page =>
      (origin as ArticuloIndexScreenPaginatedControllerProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
