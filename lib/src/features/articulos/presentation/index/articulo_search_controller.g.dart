// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articuloIndexScreenControllerHash() =>
    r'd55801f35878035b84da5eee57e63b27db6f70b8';

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

abstract class _$ArticuloIndexScreenController
    extends BuildlessAutoDisposeAsyncNotifier<int> {
  late final bool isSearchArticuloForForm;

  FutureOr<int> build(bool isSearchArticuloForForm);
}

/// See also [ArticuloIndexScreenController].
@ProviderFor(ArticuloIndexScreenController)
const articuloIndexScreenControllerProvider =
    ArticuloIndexScreenControllerFamily();

/// See also [ArticuloIndexScreenController].
class ArticuloIndexScreenControllerFamily extends Family<AsyncValue<int>> {
  /// See also [ArticuloIndexScreenController].
  const ArticuloIndexScreenControllerFamily();

  /// See also [ArticuloIndexScreenController].
  ArticuloIndexScreenControllerProvider call(bool isSearchArticuloForForm) {
    return ArticuloIndexScreenControllerProvider(isSearchArticuloForForm);
  }

  @override
  ArticuloIndexScreenControllerProvider getProviderOverride(
    covariant ArticuloIndexScreenControllerProvider provider,
  ) {
    return call(provider.isSearchArticuloForForm);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'articuloIndexScreenControllerProvider';
}

/// See also [ArticuloIndexScreenController].
class ArticuloIndexScreenControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ArticuloIndexScreenController,
          int
        > {
  /// See also [ArticuloIndexScreenController].
  ArticuloIndexScreenControllerProvider(bool isSearchArticuloForForm)
    : this._internal(
        () =>
            ArticuloIndexScreenController()
              ..isSearchArticuloForForm = isSearchArticuloForForm,
        from: articuloIndexScreenControllerProvider,
        name: r'articuloIndexScreenControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$articuloIndexScreenControllerHash,
        dependencies: ArticuloIndexScreenControllerFamily._dependencies,
        allTransitiveDependencies:
            ArticuloIndexScreenControllerFamily._allTransitiveDependencies,
        isSearchArticuloForForm: isSearchArticuloForForm,
      );

  ArticuloIndexScreenControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.isSearchArticuloForForm,
  }) : super.internal();

  final bool isSearchArticuloForForm;

  @override
  FutureOr<int> runNotifierBuild(
    covariant ArticuloIndexScreenController notifier,
  ) {
    return notifier.build(isSearchArticuloForForm);
  }

  @override
  Override overrideWith(ArticuloIndexScreenController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ArticuloIndexScreenControllerProvider._internal(
        () => create()..isSearchArticuloForForm = isSearchArticuloForForm,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        isSearchArticuloForForm: isSearchArticuloForForm,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ArticuloIndexScreenController, int>
  createElement() {
    return _ArticuloIndexScreenControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArticuloIndexScreenControllerProvider &&
        other.isSearchArticuloForForm == isSearchArticuloForForm;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, isSearchArticuloForForm.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ArticuloIndexScreenControllerRef
    on AutoDisposeAsyncNotifierProviderRef<int> {
  /// The parameter `isSearchArticuloForForm` of this provider.
  bool get isSearchArticuloForForm;
}

class _ArticuloIndexScreenControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ArticuloIndexScreenController,
          int
        >
    with ArticuloIndexScreenControllerRef {
  _ArticuloIndexScreenControllerProviderElement(super.provider);

  @override
  bool get isSearchArticuloForForm =>
      (origin as ArticuloIndexScreenControllerProvider).isSearchArticuloForForm;
}

String _$articuloIndexScreenPaginatedControllerHash() =>
    r'4d897b7c419ab41acd639151a649f5f917183836';

abstract class _$ArticuloIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<Articulo>> {
  late final int page;
  late final bool isSearchArticuloForForm;

  FutureOr<List<Articulo>> build({
    required int page,
    required bool isSearchArticuloForForm,
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
    required bool isSearchArticuloForForm,
  }) {
    return ArticuloIndexScreenPaginatedControllerProvider(
      page: page,
      isSearchArticuloForForm: isSearchArticuloForForm,
    );
  }

  @override
  ArticuloIndexScreenPaginatedControllerProvider getProviderOverride(
    covariant ArticuloIndexScreenPaginatedControllerProvider provider,
  ) {
    return call(
      page: provider.page,
      isSearchArticuloForForm: provider.isSearchArticuloForForm,
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
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ArticuloIndexScreenPaginatedController,
          List<Articulo>
        > {
  /// See also [ArticuloIndexScreenPaginatedController].
  ArticuloIndexScreenPaginatedControllerProvider({
    required int page,
    required bool isSearchArticuloForForm,
  }) : this._internal(
         () =>
             ArticuloIndexScreenPaginatedController()
               ..page = page
               ..isSearchArticuloForForm = isSearchArticuloForForm,
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
         isSearchArticuloForForm: isSearchArticuloForForm,
       );

  ArticuloIndexScreenPaginatedControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
    required this.isSearchArticuloForForm,
  }) : super.internal();

  final int page;
  final bool isSearchArticuloForForm;

  @override
  FutureOr<List<Articulo>> runNotifierBuild(
    covariant ArticuloIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
      isSearchArticuloForForm: isSearchArticuloForForm,
    );
  }

  @override
  Override overrideWith(
    ArticuloIndexScreenPaginatedController Function() create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ArticuloIndexScreenPaginatedControllerProvider._internal(
        () =>
            create()
              ..page = page
              ..isSearchArticuloForForm = isSearchArticuloForForm,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
        isSearchArticuloForForm: isSearchArticuloForForm,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ArticuloIndexScreenPaginatedController,
    List<Articulo>
  >
  createElement() {
    return _ArticuloIndexScreenPaginatedControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ArticuloIndexScreenPaginatedControllerProvider &&
        other.page == page &&
        other.isSearchArticuloForForm == isSearchArticuloForForm;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);
    hash = _SystemHash.combine(hash, isSearchArticuloForForm.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ArticuloIndexScreenPaginatedControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Articulo>> {
  /// The parameter `page` of this provider.
  int get page;

  /// The parameter `isSearchArticuloForForm` of this provider.
  bool get isSearchArticuloForForm;
}

class _ArticuloIndexScreenPaginatedControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ArticuloIndexScreenPaginatedController,
          List<Articulo>
        >
    with ArticuloIndexScreenPaginatedControllerRef {
  _ArticuloIndexScreenPaginatedControllerProviderElement(super.provider);

  @override
  int get page =>
      (origin as ArticuloIndexScreenPaginatedControllerProvider).page;
  @override
  bool get isSearchArticuloForForm =>
      (origin as ArticuloIndexScreenPaginatedControllerProvider)
          .isSearchArticuloForForm;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
