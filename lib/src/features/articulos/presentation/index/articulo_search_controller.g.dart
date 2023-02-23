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

  Future<List<Articulo>> build({
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
    required this.page,
  }) : super.internal(
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
        );

  final int page;

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

  @override
  Future<List<Articulo>> runNotifierBuild(
    covariant ArticuloIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
