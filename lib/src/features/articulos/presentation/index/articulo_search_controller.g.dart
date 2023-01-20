// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_search_controller.dart';

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

String _$ArticuloIndexScreenControllerHash() =>
    r'40e8919ff773d0c6d2a6e1ca63bf58105e9c4cc4';

/// See also [ArticuloIndexScreenController].
final articuloIndexScreenControllerProvider =
    AutoDisposeAsyncNotifierProvider<ArticuloIndexScreenController, int>(
  ArticuloIndexScreenController.new,
  name: r'articuloIndexScreenControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$ArticuloIndexScreenControllerHash,
);
typedef ArticuloIndexScreenControllerRef
    = AutoDisposeAsyncNotifierProviderRef<int>;

abstract class _$ArticuloIndexScreenController
    extends AutoDisposeAsyncNotifier<int> {
  @override
  FutureOr<int> build();
}

String _$ArticuloIndexScreenPaginatedControllerHash() =>
    r'572102ffab93f187f0f06f9afe5e27328965e29c';

/// See also [ArticuloIndexScreenPaginatedController].
class ArticuloIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ArticuloIndexScreenPaginatedController, List<Articulo>> {
  ArticuloIndexScreenPaginatedControllerProvider({
    required this.page,
  }) : super(
          () => ArticuloIndexScreenPaginatedController()..page = page,
          from: articuloIndexScreenPaginatedControllerProvider,
          name: r'articuloIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ArticuloIndexScreenPaginatedControllerHash,
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
  FutureOr<List<Articulo>> runNotifierBuild(
    covariant _$ArticuloIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }
}

typedef ArticuloIndexScreenPaginatedControllerRef
    = AutoDisposeAsyncNotifierProviderRef<List<Articulo>>;

/// See also [ArticuloIndexScreenPaginatedController].
final articuloIndexScreenPaginatedControllerProvider =
    ArticuloIndexScreenPaginatedControllerFamily();

class ArticuloIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<Articulo>>> {
  ArticuloIndexScreenPaginatedControllerFamily();

  ArticuloIndexScreenPaginatedControllerProvider call({
    required int page,
  }) {
    return ArticuloIndexScreenPaginatedControllerProvider(
      page: page,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<ArticuloIndexScreenPaginatedController,
      List<Articulo>> getProviderOverride(
    covariant ArticuloIndexScreenPaginatedControllerProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'articuloIndexScreenPaginatedControllerProvider';
}

abstract class _$ArticuloIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<Articulo>> {
  late final int page;

  FutureOr<List<Articulo>> build({
    required int page,
  });
}
