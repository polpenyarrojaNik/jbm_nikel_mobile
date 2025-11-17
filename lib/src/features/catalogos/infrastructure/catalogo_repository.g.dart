// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(catalogoRepository)
const catalogoRepositoryProvider = CatalogoRepositoryProvider._();

final class CatalogoRepositoryProvider
    extends
        $FunctionalProvider<
          CatalogoRepository,
          CatalogoRepository,
          CatalogoRepository
        >
    with $Provider<CatalogoRepository> {
  const CatalogoRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogoRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogoRepositoryHash();

  @$internal
  @override
  $ProviderElement<CatalogoRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CatalogoRepository create(Ref ref) {
    return catalogoRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CatalogoRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CatalogoRepository>(value),
    );
  }
}

String _$catalogoRepositoryHash() =>
    r'40f3baddfbd2749a7b720f8bedaa9d3f01ca5538';

@ProviderFor(TipoCatalogoList)
const tipoCatalogoListProvider = TipoCatalogoListProvider._();

final class TipoCatalogoListProvider
    extends $AsyncNotifierProvider<TipoCatalogoList, List<TipoCatalogo>> {
  const TipoCatalogoListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tipoCatalogoListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tipoCatalogoListHash();

  @$internal
  @override
  TipoCatalogoList create() => TipoCatalogoList();
}

String _$tipoCatalogoListHash() => r'16167bf4d626cdbf6a40f975a510974c37f64b5b';

abstract class _$TipoCatalogoList extends $AsyncNotifier<List<TipoCatalogo>> {
  FutureOr<List<TipoCatalogo>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<TipoCatalogo>>, List<TipoCatalogo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<TipoCatalogo>>, List<TipoCatalogo>>,
              AsyncValue<List<TipoCatalogo>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(TipoPrecioCatalogoList)
const tipoPrecioCatalogoListProvider = TipoPrecioCatalogoListProvider._();

final class TipoPrecioCatalogoListProvider
    extends
        $AsyncNotifierProvider<
          TipoPrecioCatalogoList,
          List<TipoPrecioCatalogo>
        > {
  const TipoPrecioCatalogoListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'tipoPrecioCatalogoListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$tipoPrecioCatalogoListHash();

  @$internal
  @override
  TipoPrecioCatalogoList create() => TipoPrecioCatalogoList();
}

String _$tipoPrecioCatalogoListHash() =>
    r'e216e2cc123e39d4a1dab440a2d6c85e0bd71d73';

abstract class _$TipoPrecioCatalogoList
    extends $AsyncNotifier<List<TipoPrecioCatalogo>> {
  FutureOr<List<TipoPrecioCatalogo>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<TipoPrecioCatalogo>>,
              List<TipoPrecioCatalogo>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<TipoPrecioCatalogo>>,
                List<TipoPrecioCatalogo>
              >,
              AsyncValue<List<TipoPrecioCatalogo>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(IdiomaCatalogoList)
const idiomaCatalogoListProvider = IdiomaCatalogoListProvider._();

final class IdiomaCatalogoListProvider
    extends $AsyncNotifierProvider<IdiomaCatalogoList, List<IdiomaCatalogo>> {
  const IdiomaCatalogoListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'idiomaCatalogoListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$idiomaCatalogoListHash();

  @$internal
  @override
  IdiomaCatalogoList create() => IdiomaCatalogoList();
}

String _$idiomaCatalogoListHash() =>
    r'b7fa47319aa9351048ac5fcc554af0a68c97f2df';

abstract class _$IdiomaCatalogoList
    extends $AsyncNotifier<List<IdiomaCatalogo>> {
  FutureOr<List<IdiomaCatalogo>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<List<IdiomaCatalogo>>, List<IdiomaCatalogo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<IdiomaCatalogo>>,
                List<IdiomaCatalogo>
              >,
              AsyncValue<List<IdiomaCatalogo>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
