// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pais_search_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaisSearchPageController)
const paisSearchPageControllerProvider = PaisSearchPageControllerProvider._();

final class PaisSearchPageControllerProvider
    extends $AsyncNotifierProvider<PaisSearchPageController, List<Pais>> {
  const PaisSearchPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paisSearchPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paisSearchPageControllerHash();

  @$internal
  @override
  PaisSearchPageController create() => PaisSearchPageController();
}

String _$paisSearchPageControllerHash() =>
    r'c7f0c7dd3d2aeb59abb3cc6ab597825a1829e70f';

abstract class _$PaisSearchPageController extends $AsyncNotifier<List<Pais>> {
  FutureOr<List<Pais>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Pais>>, List<Pais>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Pais>>, List<Pais>>,
              AsyncValue<List<Pais>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
