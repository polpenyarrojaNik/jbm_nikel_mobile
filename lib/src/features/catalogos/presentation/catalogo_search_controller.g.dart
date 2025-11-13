// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CatalogoIndexScreenController)
const catalogoIndexScreenControllerProvider =
    CatalogoIndexScreenControllerProvider._();

final class CatalogoIndexScreenControllerProvider
    extends
        $AsyncNotifierProvider<CatalogoIndexScreenController, List<Catalogo>> {
  const CatalogoIndexScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogoIndexScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogoIndexScreenControllerHash();

  @$internal
  @override
  CatalogoIndexScreenController create() => CatalogoIndexScreenController();
}

String _$catalogoIndexScreenControllerHash() =>
    r'4147fae714d8f268e0e4a68a40297256a106ae42';

abstract class _$CatalogoIndexScreenController
    extends $AsyncNotifier<List<Catalogo>> {
  FutureOr<List<Catalogo>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Catalogo>>, List<Catalogo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Catalogo>>, List<Catalogo>>,
              AsyncValue<List<Catalogo>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
